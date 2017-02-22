# Docker Register image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y curl dnsmasq psmisc supervisor

ENV DOCKERGEN_URL https://github.com/jwilder/docker-gen/releases/download/0.3.6/docker-gen-linux-amd64-0.3.6.tar.gz
RUN (cd /tmp && curl -L -o docker-gen.tgz $DOCKERGEN_URL && tar -C /usr/local/bin -xvzf docker-gen.tgz)

ADD hosts.dnsmasq.tmpl /etc/hosts.dnsmasq.tmpl

ENV DOCKER_HOST unix:///var/run/docker.sock

RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/docker-gen.conf

EXPOSE 53/udp

ENTRYPOINT  ["/usr/bin/supervisord"]

CMD ["-n"]
