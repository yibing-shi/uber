import datetime
import time


class ElkQueryBuilder(object):
    """Class for building json query for searching elk logs"""
    def __init__(self):
        now = datetime.datetime.now()
        self.from_time = now - datetime.timedelta(hours=1)
        self.to_time = now
        self.max_size = 500
        self.should_bool_queries = []
        self.must_bool_filters = []

    def get_max_size(self):
        return self.max_size

    def set_max_size(self, size):
        self.max_size = size
        return self

    def get_from_time(self):
        return self.from_time

    def set_from_time(self, from_time):
        self.from_time = from_time
        return self

    def get_to_time(self):
        return self.to_time

    def set_to_time(self, to_time):
        self.to_time = to_time
        return self

    def add_wildcard_query(self, query_string):
        self.should_bool_queries.append({
            "query_string": {
                "query": query_string,
                "lowercase_expanded_terms": False
            }
        })
        return self

    def add_must_term_filter(self, terms):
        self.must_bool_filters.append({
            "terms": terms
        })
        return self

    def add_must_query_string_filter(self, query_string):
        self.must_bool_filters.append({
            "fquery": {
                "query": {
                    "query_string": {
                        "query": query_string
                    }
                },
            }
        })
        return self

    def build(self):
        base = {
          "query": {
            "filtered": {
              "query": {
                "bool": {
                   "should": []
                 }
              },
              "filter": {
                "bool": {
                  "must": [
                    {
                      "range": {
                        "@timestamp": {
                          "from": _convert_to_unix_time(self.from_time),
                          "to": _convert_to_unix_time(self.to_time)
                        }
                      }
                    }
                  ]
                }
              }
            }
          },
          "size": self.max_size,
          "sort": [
            {
              "@timestamp": {
                "order": "asc",
                "ignore_unmapped": True
              }
            }
          ]
        }
        if self.should_bool_queries:
            base['query']['filtered']['query']['bool']['should'] += self.should_bool_queries
        base['query']['filtered']['filter']['bool']['must'] += self.must_bool_filters
        return base


def _convert_to_unix_time(d):
    """Convert datetime to unix time"""
    return int(time.mktime(d.timetuple()) * 1000)

