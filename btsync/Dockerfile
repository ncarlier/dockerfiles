# Bittorrent Sync Docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update && apt-get install -y supervisor curl && apt-get clean

# Install btsync
ENV BTSYNC_URL http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN (curl -L -o /tmp/btsync.tgz $BTSYNC_URL && tar -C /usr/local/bin -xzf /tmp/btsync.tgz btsync && rm -rf /tmp/btsync.tgz)
RUN mkdir -p /var/local/btsync /var/run/btsync /data

# Install confd
ENV CONFD_URL https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64
RUN (curl -L -o /usr/local/bin/confd $CONFD_URL && chmod +x /usr/local/bin/confd)
ADD confd /etc/confd

# Install etcdctl
ENV ETCD_URL https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz
RUN (curl -L -o /tmp/etcd.tgz $ETCD_URL && tar -C /usr/local/bin -xzf /tmp/etcd.tgz --strip-components 1 --no-anchored etcdctl && rm -rf /tmp/etcd.tgz)

# Setup supervisord
ADD supervisord.conf /etc/supervisor/conf.d/btsync.conf

# Setup etcd ip/port
ENV ETCD_HOST 172.17.42.1:4001

# Setup entrypoint script
ADD entrypoint /usr/local/bin/entrypoint

WORKDIR /var/local/btsync

# Expose ports
EXPOSE 55555

# Export volume
VOLUME ["/data"]

ENTRYPOINT ["/usr/local/bin/entrypoint"]

