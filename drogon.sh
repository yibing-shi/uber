curl -X POST --data '
{
    "name": "Yibing test",
    "file": "hdfs:///user/yibing.shi/original-SparkPlug-2.0.0.1.jar",
    "className": "com.uber.sparkplug.SparkSQLExample",
    "jars": ["hdfs:///user/yibing.shi/original-SparkPlug-2.0.0.1.jar"],
    "proxyUser": "yibing.shi",
    "sparkEnv": "SPARK_210",
    "queue": "uber_eats",
    "args": ["dca"]
}
' \
-H 'Content-Type: application/json' \
-H 'X-DROGON-CLUSTER: dca1/NonSecure' \
-H 'Rpc-Caller: curl' \
-H 'Rpc-Service: drogon' \
http://localhost:5436/batches/
