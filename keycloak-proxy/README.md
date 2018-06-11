# Keycloak Proxy

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/mqtt/latest.svg)](https://hub.docker.com/r/ncarlier/keycloak-proxy/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/mqtt.svg)](https://hub.docker.com/r/ncarlier/keycloak-proxy/)

## Description

Keycloak Proxy image based on this genuine [project][repository].

## Usage

Start the container:

```
docker run -d -P ncarlier/keycloak-proxy \
  -e PROXY_DISCOVERY_URL='https://<MY_KEYCLOAK_BASE_URL>/auth/realms/<MY_REALM>' \
  -e PROXY_CLIENT_ID='<MY_CLIENT_ID>' \
  -e PROXY_CLIENT_SECRET='<MY_CLIENT_SECRET>' \
  -e PROXY_UPSTREAM_URL='<MY_UPSTREAM_URL>' \
  -e PROXY_LISTEN=':3000' \
  -e PROXY_REDIRECTION_URL='<MY_REDIRECTION_URL>' \
  -e PROXY_ENCRYPTION_KEY='<MY_RANDOM_ENCRYPTION_KEY>'
```

See genuine project [repository][repository] for more configuration options.

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.


[repository]: https://github.com/gambol99/keycloak-proxy
