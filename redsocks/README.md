# Redsocks Docker image

## Description

Docker image used to handle corporate http proxy requests.

## Usage

Start the container like this:

```
docker run --privileged=true --net=host -d ncarlier/docker-redsocks 1.2.3.4 3128
```

Replace the IP and the port by those of your proxy.

The container will start redsocks and automatically configure iptable to forward **all** the TCP traffic through the proxy.

If you want to add exception for an IP or a range of IP you can edit the whitelist file.
Once edited you can replace this file into the container by mounting it:

```
docker run --privileged=true --net=host \
  -v whitelist.txt:/etc/redsocks-whitelist.txt \
  -d ncarlier/docker-redsocks 1.2.3.4 3128
```

Use docker stop to halt the container. The iptables rules should be reversed. If not, you can execute this command:

```
iptables-save | grep -v REDSOCKS | iptables-restore
```

## Build

Build the image with `make`.

> Use `make help` to see available commands for this image.
