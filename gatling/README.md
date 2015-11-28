# Gatling docker image

## Description

Gatling Docker image based on java-8 image.

## Usage

Start Gatling cli:

``
docker run -it --rm ncarlier/gatling
``

Start Gatling using your configuration:

``
docker run -it --rm \
-v ./conf:/opt/gatling/conf \
-v ./user-files:/opt/gatling/user-files \
-v ./results:/opt/gatling/results \
ncarlier/gatling
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
