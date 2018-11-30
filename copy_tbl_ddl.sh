#!/usr/bin/env bash

if [[ $# < 2 ]]
then
  echo "Provide parameters: <db_name> <table_name>"
  exit -1
fi

TABLE_NAME="$1.$2"
BL_CMD="source /etc/profile; /opt/hive/apache-hive-1.1.0-cdh5.7.2-bin/bin/beeline -u 'jdbc:hive2://hadoopmaster08-sjc1:2181,hadoopmaster09-sjc1:2181,hadoopmaster10-sjc1:2181/uber_eats;serviceDiscoveryMode=zookeeper;zooKeeperNamespace=hiveserver2_prod_etl' -hiveconf tez.queue.name=uber_eats -hiveconf mapred.job.queue.name=uber_eats -n uber_eats --outputformat=tsv2 -e 'show create table ${TABLE_NAME}'"

echo $BL_CMD
ssh hadoopgw04-sjc1 "$BL_CMD" >/tmp/$TABLE_NAME.sql
echo "Got table definition in /tmp/$TABLE_NAME.sql"

sed -i "1d" /tmp/$TABLE_NAME.sql
sed -i "s/com.uber.hoodie.hadoop.HoodieInputFormat/org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat/g" /tmp/$TABLE_NAME.sql
sed -i "s/date:/\`date\`:/g" /tmp/$TABLE_NAME.sql
sed -i "s/timestamp:/\`timestamp\`:/g" /tmp/$TABLE_NAME.sql
loc_line_no=$(awk '/^LOCATION/{print NR}' /tmp/$TABLE_NAME.sql)
loc_line_no_plus=$(expr $loc_line_no + 1)
sed -i "${loc_line_no},${loc_line_no_plus}d" /tmp/$TABLE_NAME.sql
hive --hiveconf hive.root.logger=INFO,console -e "CREATE DATABASE IF NOT EXISTS $1"
hive --hiveconf hive.root.logger=INFO,console -f /tmp/$TABLE_NAME.sql
