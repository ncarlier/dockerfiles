# MongoDB Docker image

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/mongodb/latest.svg)](https://hub.docker.com/r/ncarlier/mongodb/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/mongodb.svg)](https://hub.docker.com/r/ncarlier/mongodb/)

## Description

MongoDB Docker image based on debian.

## Usage

### On a Docker host

Start the container:

```
docker run -d -P -e SERVICE_PORT=27017 --name mongo ncarlier/mongodb
```

### On CoreOS

```
fleetctl start mongodb@master.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
