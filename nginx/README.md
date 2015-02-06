# Nginx Docker image

## Description

Nginx Docker image based on debian.

Nginx is configured as an automatic reverse proxy for docker images running on the same machine.

It's using [docker-gen](https://github.com/jwilder/docker-gen) to automatically build the nginx configuration file when a new container is spawned.

To run nginx and docker-gen into the same container we are using supervisord.

## Usage

A container is automatically added to the configuration as soon it expose the following environment variables:

```
ENV DOMAIN_NAME mydomain.com
ENV MAIN_PORT 3001
```

> MAIN_PORT is optional and needed only if the container is exposing more than one port

To bind docker-gen with the hosting Docker, you have to run this image like this:

```
docker run --name nginx -v /var/run/docker.sock:/tmp/docker.sock -d -p 80:80 ncarlier/nginx
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
