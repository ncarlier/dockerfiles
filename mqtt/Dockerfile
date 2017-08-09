#########################################
# MQTT broker: Mosquitto
#########################################

FROM alpine:latest

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install packages
RUN apk add --update mosquitto mosquitto-clients

# Expose MQTT port
EXPOSE 1883

ENTRYPOINT ["mosquitto"]
