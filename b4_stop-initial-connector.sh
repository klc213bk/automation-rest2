#!/bin/bash

set -e


curl -X POST http://localhost:8102/stopInitialConnector
sleep 5




echo "stop base process END!!!"