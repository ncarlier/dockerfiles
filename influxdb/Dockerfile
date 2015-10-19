# InfluxDB docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y curl

# Install InfluxDB
ENV INFLUX_URL https://s3.amazonaws.com/influxdb/influxdb_0.9.4.2_amd64.deb
RUN curl -s -o /tmp/influxdb_latest_amd64.deb $INFLUX_URL && \
    dpkg -i /tmp/influxdb_latest_amd64.deb && \
    rm /tmp/influxdb_latest_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

# Make directories
RUN mkdir -p /var/opt/influxdb/{data,meta}
RUN mkdir /usr/share/collectd

# Configutration files
COPY config.toml /opt/influxdb/shared/config.toml
COPY types.db /usr/share/collectd/types.db

# Expose ports
# Admin server
EXPOSE 8083
# HTTP API
EXPOSE 8086
# Collectd input
EXPOSE 25826

ENTRYPOINT ["/opt/influxdb/influxd"]
CMD ["-config=/opt/influxdb/shared/config.toml"]
