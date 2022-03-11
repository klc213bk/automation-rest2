#!/bin/bash

set -e

curl -X POST http://localhost:8103/stopHeartbeat
sleep 5

curl -X POST http://localhost:8103/stopHeartbeatConsumer

echo "startup base process END!!!"