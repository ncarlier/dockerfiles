#########################################
# Node-RED server.
#########################################

FROM node:6

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install packages
RUN mkdir /root/.node-red && \
    npm install -g --unsafe-perm node-red && \
    npm install -g --unsafe-perm \
        node-red-admin \
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

# Default password (admin)
ENV NODERED_PASSWORD=$2a$08$tWUmm9CoMwTXnmt8xD7xv.YATs.0iS/aQWAlH4hTrjMVZxatrPTsi

# Install configuration file
COPY settings.js /root/.node-red/settings.js

# Ports
EXPOSE 1880

ENTRYPOINT ["node-red"]

