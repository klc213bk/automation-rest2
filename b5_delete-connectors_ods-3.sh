#!/bin/bash

set -e

curl -X DELETE http://localhost:8102/connectors/ods-3

sleep 5

echo "delete connectors process END!!!"