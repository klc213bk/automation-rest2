#!/bin/bash

kill -9 $(lsof -t -i:8103 -sTCP:LISTEN)
kill -9 $(lsof -t -i:8102 -sTCP:LISTEN)
kill -9 $(lsof -t -i:8101 -sTCP:LISTEN)
kill -9 $(lsof -t -i:8100 -sTCP:LISTEN)
