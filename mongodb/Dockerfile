# MongoDB docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y mongodb-server

# Create database directory
RUN mkdir -p /var/opt/mongodb && chown mongodb.mongodb /var/opt/mongodb

# Expose MongoDB port
EXPOSE 27017

USER mongodb

ENTRYPOINT  ["/usr/bin/mongod"]
CMD ["--dbpath", "/var/opt/mongodb", "--replSet", "rs0"]
