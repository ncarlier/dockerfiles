# Redis Docker image

## Description

Redis Docker image.

## Usage

### On a Docker host

Start the container:

```
docker run -d -P -e SERVICE_PORT=6379 --name redis redis
```

### On CoreOS

```
fleetctl start redis@master.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
