# MongoDB Docker image

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
