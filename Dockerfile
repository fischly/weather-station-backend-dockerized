
FROM alpine:3.14

# update package manager sources
# install nodejs and npm as runtime for the mqtt-to-db logger application
# install mosquitto as mqtt broker
RUN apk update && \
    apk add nodejs npm && \
    apk add mosquitto

# copy logger source code to docker image
COPY nodejs-mqtt-to-db-logger/ /app/nodejs-mqtt-to-db-logger/

# copy mosquitto configuration to docker image
COPY mosquitto.conf /etc/mosquitto/

# copy starting script to docker image and give execute permission
COPY start.sh /start.sh
RUN chmod +x /start.sh

# install node.js dependencies
RUN cd /app/nodejs-mqtt-to-db-logger/ && npm install

# expose mosqitto port
EXPOSE 13339

# specify the starting script to be executed when the container is started
CMD [ "/start.sh" ]