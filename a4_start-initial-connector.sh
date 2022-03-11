#!/bin/bash

set -e

curl -X POST http://localhost:8102/startInitialConnector
sleep 10

curl -X DELETE http://localhost:8102/connectors/ods-0
sleep 5

#curl -X POST http://localhost:8102/applyLogminerSync -H 'Content-Type: application/json' -d '{"connectorName":"ods-1","resetOffset":"true","startScn":"","applyOrDrop":1,"tableListStr":"TGLMINER.TM2_HEARTBEAT"}'
#sleep 5

echo "startup base process END!!!"

