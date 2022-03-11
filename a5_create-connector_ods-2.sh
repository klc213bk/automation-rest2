#!/bin/bash

set -e

curl -X POST http://localhost:8102/createInitialConnector/ods-3

sleep 10

curl -X POST http://localhost:8102/applyLogminerSync -H 'Content-Type: application/json' -d '{"connectorName":"ods-3","resetOffset":"true","startScn":"","applyOrDrop":1,"tableListStr":"TGLMINER.TM2_HEARTBEAT"}'
sleep 5


echo "startup base process END!!!"