# Node-RED server.
#
# VERSION 0.1

FROM node:5

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install package
RUN npm install -g node-red

# Ports
EXPOSE 1880

ENTRYPOINT ["/usr/local/bin/node-red"]

