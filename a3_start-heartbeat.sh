#!/bin/bash

set -e

curl -X POST http://localhost:8103/startHeartbeatConsumer
sleep 5

curl -X POST http://localhost:8103/startHeartbeat
sleep 5

echo "startup base process END!!!"