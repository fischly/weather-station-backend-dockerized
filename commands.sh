#!/bin/bash

#https://github.com/fischly/nodejs-mqtt-to-db-logger/archive/master.zip

# get the latest source code from github
git clone --depth 1 --branch master https://github.com/fischly/nodejs-mqtt-to-db-logger.git


# build the image
docker build -t wheater-station-backend .

# run the container interactively
docker run --rm -it wheater-station-backend /bin/sh



# mosquitto_rr  -L "mqtt://localhost:13339/dci-test" -t dci-test -e dci-test -m hello