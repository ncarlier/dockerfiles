# Mumble docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y mumble-server

RUN useradd -u 1000 mumble \
    && mkdir /data && chown 1000 /data

ADD mumble-server.ini /etc/mumble-server.ini

EXPOSE 64738/udp

USER mumble

ENTRYPOINT ["/usr/sbin/murmurd"]
CMD ["-fg", "-ini", "/etc/mumble-server.ini"]

