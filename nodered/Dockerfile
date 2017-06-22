# Node-RED server.
#
# VERSION 0.1

FROM node:6

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

RUN npm install -g --unsafe-perm node-red && \
    npm install -g --unsafe-perm \
        node-red-dashboard \
        node-red-contrib-chatbot \
        node-red-node-ping \
        node-red-contrib-bigtimer \
        node-red-contrib-influxdb \
        node-red-contrib-web-worldmap \
        node-red-contrib-interval \
        node-red-contrib-json \
        node-red-contrib-keeper \
        node-red-contrib-mapper \
        node-red-contrib-redis \
        node-red-contrib-under-query \
        node-red-node-forecastio \
        node-red-node-geofence \
        node-red-node-pushbullet

COPY entrypoint.sh /entrypoint.sh
COPY settings.tmpl /etc/node-red-settings.tmpl

RUN chmod +x /entrypoint.sh

# Ports
EXPOSE 1880

ENTRYPOINT ["/entrypoint.sh"]

