import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('job_file', help='original job file')
    parser.add_argument('job_conf_file', help='File that contains job configuration info')
    parser.add_argument('output_file', help='The path of output new job file')
    args = parser.parse_args()

    job_conf_cache = {}
    with open(args.job_conf_file, "r") as job_conf_file:
        conf_record = job_conf_file.readline()
        while conf_record:
            first_comma = conf_record.find(",")
            second_comma = conf_record.find(",", first_comma + 1)
            job_uuid = conf_record[:first_comma]
            job_conf_cache[job_uuid] = conf_record[second_comma+1:-1]
            conf_record = job_conf_file.readline()

    with open(args.job_file, "r") as job_file, open(args.output_file, "w") as output_file:
        header = job_file.readline()
        output_file.write(header)

        line = job_file.readline()
        while line:
            first_comma = line.find(",")
            job_uuid = line[:first_comma]
            output_file.write(line[:-1])
            output_file.write(",")
            conf = job_conf_cache.get(job_uuid, '')
            if conf:
                output_file.write(conf)
            output_file.write("\n")
            line = job_file.readline()

    print("Done!!!")
