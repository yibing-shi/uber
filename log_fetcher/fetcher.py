import sys
import requests

from collections import defaultdict, deque
from datetime import timedelta
from dateutil.parser import parse as dateutil_parse
from copy import copy


class ELKLogFetcher:
    def __init__(self, elk_indices, elk_query_builder, record_write_fn):
        self.elk_indices = elk_indices
        self.elk_query_builder = elk_query_builder
        self.record_writer = ConfRecordsWriter(record_write_fn, timedelta(minutes=1))

    def fetch_log(self):
        to_time = self.elk_query_builder.get_to_time()
        max_size = self.elk_query_builder.get_max_size()
        max_size = max_size if max_size else sys.maxint
        while True:
            t1, t2 = self.elk_query_builder.get_from_time(), self.elk_query_builder.get_to_time()
            window_size = t2 - t1
            print('Fetching logs between {} and {}'.format(t1, t2))
            resp = self._fetch_elk_records()
            total_hits = resp['hits']['total']
            if total_hits > max_size:
                # Dynamically reduce window size
                window_size = window_size / (total_hits / max_size + 1)
                if window_size < timedelta(seconds=1):
                    raise """max block size [{}] is too small. Cannot find an appropriate time
                             window to hold a block""".format(max_size)
                else:
                    print("Reduce window size to {}".format(window_size))
                self.elk_query_builder.set_to_time(t1 + window_size)
                continue

            for r in resp['hits']['hits']:
                self.record_writer.write_record(r)
            t1, t2 = t2, t2 + window_size
            self.elk_query_builder.set_from_time(t1)
            self.elk_query_builder.set_to_time(t2)
            if t1 >= to_time:
                break
        self.record_writer.clean_up()
        print("Done!!!")

    def _fetch_elk_records(self):
        """Helper function to fetch elk objects"""
        indices_str = ','.join(self.elk_indices)
        headers = {
            'x-uber-origin': 'ue-script',
            'x-uber-source': 'ue-script'
        }
        base_url = 'http://localhost:16137'
        full_url = '{}/elasticsearch/{}/_search'.format(base_url, indices_str)
        full_resp = requests.post(full_url, headers=headers, json=self.elk_query_builder.build())
        return full_resp.json()


class ConfRecordsWriter:
    def __init__(self, record_write_fn, retention_time):
        self.job_conf_cache = defaultdict(dict)
        self.job_occurrence = deque()
        self.record_write_fn = record_write_fn
        self.retention_time = retention_time

    def write_record(self, record):
        acadia_rsp = record['_source']['acadia_getDispatchConfigurations_resp']['success']
        record_ts = dateutil_parse(record['_source']['@timestamp'])
        for job_conf in acadia_rsp['jobDispatchConfigurations']:
            job_uuid = job_conf['jobUUID']
            configurations = job_conf['configurations']
            self.job_occurrence.append((job_uuid, record_ts))
            self._update_job_conf_cache(job_uuid, configurations, record_ts)
        self._flush_cache(record_ts)

    def clean_up(self):
        self._flush_cache(dateutil_parse("9999-01-01T00:00:00Z"))

    def _update_job_conf_cache(self, job_uuid, new_configurations, update_ts):
        for conf in new_configurations:
            conf_dict = self.job_conf_cache[job_uuid]
            conf_dict.update({conf['type']: conf['value']})
            if not conf_dict.get('first_occurrence_ts'):
                conf_dict.update({'first_occurrence_ts': update_ts})

    def _flush_cache(self, current_ts):
        while self.job_occurrence and \
                current_ts - self.job_occurrence[0][1] > self.retention_time:
            job_uuid, record_ts = self.job_occurrence.popleft()
            configurations = self.job_conf_cache[job_uuid]
            first_occurrence_ts = configurations.get('first_occurrence_ts')
            if not first_occurrence_ts or first_occurrence_ts != record_ts:
                continue
            conf_to_write = copy(configurations)
            del conf_to_write['first_occurrence_ts']
            self.record_write_fn(job_uuid, record_ts, conf_to_write)
