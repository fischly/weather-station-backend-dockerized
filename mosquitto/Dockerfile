
FROM alpine:3.14

# update package manager sources
# install mosquitto as mqtt broker
RUN apk update && \
    apk add mosquitto

# copy mosquitto configuration to docker image
COPY mosquitto.conf /etc/mosquitto/

# expose mosqitto port
EXPOSE 13339

# specify the starting script to be executed when the container is started
CMD [ "mosquitto", "-c",  "/etc/mosquitto/mosquitto.conf" ]