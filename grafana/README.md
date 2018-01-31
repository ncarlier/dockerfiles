# Grafana custom distribution

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/grafana/latest.svg)](https://hub.docker.com/r/ncarlier/grafana/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/grafana.svg)](https://hub.docker.com/r/ncarlier/grafana/)

## Description

Standard Grafana Docker image with some plugins:

- [grafana-worldmap-panel](https://grafana.com/plugins/grafana-worldmap-panel)
- [grafana-piechart-panel](https://grafana.com/plugins/grafana-piechart-panel)
- [natel-discrete-panel](https://grafana.com/plugins/natel-discrete-panel)
- [raintank-worldping-app](https://grafana.com/plugins/raintank-worldping-app)

## Usage

Start the container:

```
docker run -d -P --name grafana ncarlier/grafana
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
