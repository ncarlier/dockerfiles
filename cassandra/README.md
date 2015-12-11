# Cassandra Docker image

[![Image size](https://img.shields.io/imagelayers/image-size/ncarlier/cassandra/latest.svg)](https://hub.docker.com/r/ncarlier/cassandra/)
[![Docker pulls](https://img.shields.io/docker/pulls/ncarlier/cassandra.svg)](https://hub.docker.com/r/ncarlier/cassandra/)

## Description

Cassandra Docker image based on Spotify image.

## Usage

### On a Docker host

Start the container:

```
docker run -d -P -e SERVICE_PORT=9160 -e CASSANDRA_TOKEN=0 --name cassandra ncarlier/cassandra
```

### On CoreOS

Configure etcd:

```
# Get tokens (for 3 nodes)
python -c 'print [str(((2**64 / 3) * i) - 2**63) for i in range(3)]'

# Set cluster name
etcdctl set /configurations/cassandra/clustername wlcore
# Set seeds IP
etcdctl set /configurations/cassandra/seeds 10.0.0.205,10.0.0.11,10.0.0.250
# Set tokens for each node:
etcdctl set -- /configurations/cassandra/node1/token -9223372036854775808
etcdctl set -- /configurations/cassandra/node2/token -3074457345618258603
etcdctl set /configurations/cassandra/node3/token 3074457345618258602
```

Start the cluster:

```
fleetctl start cassandra@{1..3}.service
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
