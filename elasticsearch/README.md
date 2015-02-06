# Elasticsearch Docker image

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
