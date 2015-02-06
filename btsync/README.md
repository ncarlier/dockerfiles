# Bittorrent Sync Docker image

## Description

Syncing CoreOS directory with Bittorrent Sync.

## Usage

### On a Docker host

Start the container:

```
docker run -d -p 55555:55555 --name btsync ncarlier/btsync
```

### On CoreOS

Start the cluster:

```
fleetctl start btsync@{1..3}.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
