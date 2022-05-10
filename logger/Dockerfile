
FROM node:current-alpine

# copy logger source code to docker image
COPY nodejs-mqtt-to-db-logger/ /app/

# install node.js dependencies
RUN cd /app/ && npm install

# specify the starting script to be executed when the container is started
CMD [ "node", "/app/index.js" ]