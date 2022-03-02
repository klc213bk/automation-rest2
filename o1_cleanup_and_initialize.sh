#!/bin/bash

set -e

echo "cleanup "
curl -X POST http://localhost:8103/cleanup

echo "initialize"
curl -X POST http://localhost:8103/initialize

echo "cleanup & initialize process END!!!"