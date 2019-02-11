#!/usr/bin/env bash

while [ 1 ]; do
  num_proc=$(netstat -an | grep LISTEN | grep 18127 |grep tcp4 | wc -l)
  if [ $num_proc -eq 0 ]; then
    echo "ssh port forwarding died. Restarting it"
    ssh -ND 18127 hadoopgw01-dca1 > /dev/null 2>&1
  fi
  sleep 1
done
