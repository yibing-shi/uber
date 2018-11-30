#!/usr/bin/env python


def read_count_file(path):
    result = {}
    with open(path) as f:
        for l in f:
            arr = l.rstrip('\n').split()
            print arr
            if len(arr) < 4:
                continue
            dir_path = arr[3]
            dir_file_count = arr[1]
            result[dir_path] = int(dir_file_count)
    return result

if __name__ == '__main__':
    sjc1_info = read_count_file('/Users/yibingshi/Downloads/sjc1.txt')
    dca1_info = read_count_file('/Users/yibingshi/Downloads/dca1.txt')
    diff_info = {}
    for dir_path, sjc1_count in sjc1_info.iteritems():
        dca1_count = dca1_info.get(dir_path, 0)
        if dca1_count == 0:
            key_name = dir_path + '+'
        elif dca1_count < 0:
            key_name = dir_path + '++'
        else:
            key_name = dir_path
        diff_info[key_name] = sjc1_count - dca1_count

    for dir_path, diff_count in sorted(diff_info.iteritems(), key = lambda (k,v): (v,k)):
        print dir_path, diff_count

