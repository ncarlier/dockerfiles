# Node.JS docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y nodejs npm git

# Fix nodejs exec name
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Set registry
RUN npm config set registry http://registry.npmjs.org/

# Install debugger
RUN npm install -g node-inspector

# Create node user
RUN adduser --disabled-password node

