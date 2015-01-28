# Kibana docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install Nginx.
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Prevent to start nginx as a deamon
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Fix for long server names
RUN sed -i 's/# server_names_hash_bucket/server_names_hash_bucket/g' /etc/nginx/nginx.conf

# Add default configuration
ADD nginx.conf /etc/nginx/sites-enabled/default

# Install Kibana
ADD https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz /tmp/kibana.tgz
RUN tar -xvzf /tmp/kibana.tgz -C /tmp && \
    mv /tmp/kibana*/* /usr/share/nginx/html && \
    rm -rf /tmp/*

# Add Kibana configuration
ADD kibana.js  /usr/share/nginx/html/config.js
ADD nginx.json /usr/share/nginx/html/app/dashboards/nginx.json

EXPOSE 80

ENTRYPOINT  ["/usr/sbin/nginx"]

