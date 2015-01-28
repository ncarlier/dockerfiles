# MQTT docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y mosquitto mosquitto-clients && apt-get clean

# Expose MQTT port
EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]
