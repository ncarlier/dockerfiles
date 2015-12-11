# Jenkins Docker image

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/jenkins/latest.svg)](https://hub.docker.com/r/ncarlier/jenkins/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/jenkins.svg)](https://hub.docker.com/r/ncarlier/jenkins/)

## Description

Simple Jenkins continuous integration and delivery server using Docker.

See `plugins.txt`file to check installed plugins.

## Usage

Start the container:

```
docker run -d -P -v /var/run/docker.sock:/var/run/docker.sock \
  -e DOMAIN_NAME=jenkins.localnet --name jenkins ncarlier/jekins
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
