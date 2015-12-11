# Elasticsearch Docker image

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/elasticsearch/latest.svg)](https://hub.docker.com/r/ncarlier/elasticsearch/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/elasticsearch.svg)](https://hub.docker.com/r/ncarlier/elasticsearch/)

## Description

Elasticsearch Docker image based on debian.

Also add MongoDB river plugin.

## Usage

### On a Docker host

Start the container:

```
docker run -d -P --link mongodb:mongodb --name elasticsearch ncarlier/elasticsearch
```

### On CoreOS

```
fleetctl start elasticsearch@master.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
