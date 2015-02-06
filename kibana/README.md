# Kibana Docker image

## Description

Kibana Docker image based on debian.

## Usage

### On a Docker host

Start the container:

```
docker run -d -P -e DOMAIN_NAME=kibana.localnet --name kibana ncarlier/kibana
```

### On CoreOS

```
fleetctl start kibana@{1..3}.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
