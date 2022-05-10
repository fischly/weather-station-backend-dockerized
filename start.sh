#!/bin/sh

mosquitto -c /etc/mosquitto/mosquitto.conf &
node /app/nodejs-mqtt-to-db-logger/index.js &