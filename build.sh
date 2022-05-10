#!/bin/bash

# clone the logger repository from github (depth 1 to get the latest version only)
cd logger
git clone --depth 1 --branch master https://github.com/fischly/nodejs-mqtt-to-db-logger.git
cd ..

docker-compose up



