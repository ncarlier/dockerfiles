# MQTT docker image

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/mqtt/latest.svg)](https://hub.docker.com/r/ncarlier/mqtt/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/mqtt.svg)](https://hub.docker.com/r/ncarlier/mqtt/)

## Description

MQTT Docker image based on debian.

The MQTT broker is mosquitto.

## Usage

Start the container:

```
docker run -d -P --name mqtt ncarlier/mqtt
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
