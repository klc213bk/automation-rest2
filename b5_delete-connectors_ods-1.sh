#!/bin/bash

set -e

curl -X DELETE http://localhost:8102/connectors/ods-1

sleep 5

echo "delete connectors process END!!!"