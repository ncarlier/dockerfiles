# Node-RED server.
#
# VERSION 0.1

FROM node:5

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

RUN npm install -g --unsafe-perm node-red && \
    npm install -g --unsafe-perm \
        node-red-contrib-bigtimer \
        node-red-contrib-influxdb \
        node-red-contrib-interval \
        node-red-contrib-json \
        node-red-contrib-keeper \
        node-red-contrib-mapper \
        node-red-contrib-redis \
        node-red-contrib-slack \
        node-red-contrib-under-query \
        node-red-node-forecastio \
        node-red-node-geofence \
        node-red-node-pushbullet

# Ports
EXPOSE 1880

ENTRYPOINT ["node-red"]

