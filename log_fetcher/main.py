import argparse
import json
import base64

from datetime import datetime

from elk import ElkQueryBuilder
from fetcher import ELKLogFetcher


class ConfRecordWriter:
    def __init__(self, output_file):
        self.output_file = output_file

    def write_record(self, job_uuid, record_ts, configurations):
        conf_json = json.dumps(configurations)
        encoded_conf = base64.b64encode(conf_json)
        output_string = "{},{},{}\n".format(job_uuid, record_ts, encoded_conf)
        self.output_file.write(output_string)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("start", help="The start of the log time range in format yyyy-mm-dd HH:MM:SS")
    parser.add_argument("end", help="The end of the log time range in format yyyy-mm-dd HH:MM:SS")
    parser.add_argument("output_file_path", help='the path of output file')
    args = parser.parse_args()

    from_time = datetime.strptime(args.start, "%Y-%m-%d %H:%M:%S")
    end_time = datetime.strptime(args.end, "%Y-%m-%d %H:%M:%S")
    elk_query = ElkQueryBuilder() \
        .set_from_time(from_time) \
        .set_to_time(end_time) \
        .set_max_size(5000) \
        .add_must_query_string_filter("tags:(\"acadia\")") \
        .add_must_query_string_filter("msg:(\"acadia.getDispatchConfigurations\")") \
        .add_must_query_string_filter("status:(\"success\")")
    acadia_elk_indices = ['es-acadia-sjc1-*', 'es-acadia-dca1-*']
    with open(args.output_file_path, "w") as f:
        record_writer = ConfRecordWriter(f)
        fetcher = ELKLogFetcher(acadia_elk_indices, elk_query, record_writer.write_record)
        fetcher.fetch_log()

