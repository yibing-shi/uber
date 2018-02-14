#!/bin/bash
#SERVER=adhoc01-pvg1
SERVER=adhoc04-sjc1
# kill process by port
ports="14567 14570 14716 14200 8026 4598 20200 20000 21000 8700 5080"
for port in $ports
do
    lsof -n -i4TCP:$port | grep LISTEN | awk '{print $2}' | xargs kill
done

#exit

ssh -fN -L 14567:localhost:14567 $SERVER # ezpz
ssh -fN -L 14570:localhost:14570 $SERVER # flipr
#ssh -fN -L 14716:localhost:14716 $SERVER # gurafu
ssh -fN -L 14200:localhost:14200 $SERVER # ueta
ssh -fN -L 8026:localhost:4598 rtapi08-dca1
#ssh -fN -L 4598:localhost:4598 rtapi01-sjc1
ssh -fN -L 4598:localhost:4598 rtapi15-sjc1
ssh -fN -L 20200:localhost:20200 rt-monopod06-sjc1  #supply
#ssh -fN -L 20200:localhost:20200 rt-supply36-sjc1
ssh -fN -L 20000:localhost:20000 rt-monopod06-sjc1  #demand
#ssh -fN -L 21000:localhost:21000 rt-geospatial01-sjc1
#ssh -fN -L 8700:localhost:8700 ramen01-sjc1
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -fN -L 5080:10.160.9.5:5080 rt-monopod06-sjc1 #geobase
#ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -fN -L 5080:10.162.32.28:5080 geodocker16-sjc1
ports="14567 14570 14200 8026 4598 20200 20000"
for port in $ports
do
    echo $port
    curl localhost:$port/health
    echo
done
echo "5080"
tcurl -p 127.0.0.1:5080 geobase --health


set -x
SIM_PORTS="4567 4716 4200 6296"
for port in $SIM_PORTS
do
  kill `lsof -ti:$port`
done

# SIM_SERVER=yibing-sim01.dev
SIM_SERVER=sim-dev.dev
ssh -fN -L 4567:localhost:4567 $SIM_SERVER  # ezpzpass
ssh -fN -L 4716:localhost:4716 $SIM_SERVER  # gurafu
ssh -fN -L 4200:localhost:4200 $SIM_SERVER  # ueta
#ssh -fN -L 4725:localhost:4725 $SIM_SERVER  # multileg
#ssh -fN -L 20400:localhost:20400 $SIM_SERVER  # disco
#ssh -fN -L 127.0.0.1:21300:127.0.0.1:21300 $SIM_SERVER  # hyperbahn (powerhouse)
ssh -fN -L 6296:localhost:6296 $SIM_SERVER # motown
set +x
