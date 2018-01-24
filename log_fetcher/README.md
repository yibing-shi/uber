# To extract information from ELK
1. Open a tunnel to ELK service: `ssh -fN -L 16137:localhost:16137 adhoc04-sjc1`
2. Run the script with a command like this: `python main.py "2018-01-19 08:00:00" "2018-01-19 09:00:00" ~/Downloads/acadia_01_19_08_00.txt`, where the parameters are `time window start`, `time window end` and `output file path`

# To merge the information into a job input file:
```
python merge.py /path/to/job/input/file /path/to/job/configuration/file/generated/above /path/to/output/job/input/file
```
