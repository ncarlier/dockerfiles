# DNS Docker image

## Description

Simple dynamic DNS server for docker.

## Usage

Start the container:

```
docker run -d -p 53:53/udp --privileged --name dns \
-v /var/run/docker.sock:/var/run/docker.sock \
ncarlier/dnsmasq
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
