#
$ ./a1_start-kafka-cluster.sh

$./a2_start_rest_servers_dev.sh

$ ./a3_startup-base-services.sh

$ ./a4_start-heartbeat.sh

$ cd logminer-rest2
$ ./create-connector.sh


# check port
$ netstat -plten | grep java


###############################################################
### create folders
/data/v2/kafka/serverA
/data/v2/kafka/serverB
/data/v2/kafka/connectors
/data/v2/kafka/connect
/data/v2/kafka/logs
/data/v2/automation-rest
/data/v2/kafka-rest
/data/v2/logminer-rest
/data/v2/health-rest

build apache kafka cluster
