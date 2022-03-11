#!/bin/bash

AUTOMATION_REST_HOME=/home/steven/gitrepo/cluster/automation-rest2
KAFKA_REST_HOME=/home/steven/gitrepo/cluster/cluster-kafka-rest
LOGMINER_REST_HOME=/home/steven/gitrepo/cluster/logminer-rest2
HEALTH_REST_HOME=/home/steven/gitrepo/cluster/health-rest2

cd ${AUTOMATION_REST_HOME}
java -jar -Dspring.profiles.active=dev target/automation-rest2-2.0.jar --spring.config.location=file:config/ &

cd ${KAFKA_REST_HOME}
java -jar -Dspring.profiles.active=dev target/cluster-kafka-rest-2.0.jar --spring.config.location=file:config/ &

cd ${LOGMINER_REST_HOME}
export KAFKA_LOG4J_OPTS="-Dlog4j.configuration=file:./config/connect-log4j.properties"
java -jar -Dspring.profiles.active=dev target/logminer-rest2-2.0.jar --spring.config.location=file:config/ & 

cd ${HEALTH_REST_HOME}
java -jar -Dspring.profiles.active=dev target/health-rest2-2.0.jar --spring.config.location=file:config/ &

