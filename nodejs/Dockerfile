# Node.JS docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y nodejs npm git devscripts debhelper

# Fix nodejs exec name
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install grunt and bower
RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g grunt-cli bower node-inspector

RUN adduser --disabled-password node

