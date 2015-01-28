# Nginx docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install Nginx.
RUN apt-get update && apt-get install -y nginx wget supervisor openjdk-7-jre-headless && apt-get clean

# Prevent to start nginx as a deamon
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Fix for long server names
RUN sed -i 's/# server_names_hash_bucket/server_names_hash_bucket/g' /etc/nginx/nginx.conf
ADD nginx.tmpl /etc/nginx/nginx.tmpl

# Install Logstash
ADD https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz /tmp/logstash.tgz
RUN tar -xvzf /tmp/logstash.tgz -C /opt && \
    ln -s /opt/logstash* /opt/logstash && \
    rm /tmp/logstash.tgz && \
    mkdir -p /etc/logstash/conf.d
ADD logstash.conf /etc/logstash/conf.d/logstash.conf
ADD nginx.pattern /opt/logstash/patterns/nginx

# Setup supervisord
ADD supervisord.conf /etc/supervisor/conf.d/docker.conf

# Install docke-gen
ENV DOCKER_HOST unix:///tmp/docker.sock
ENV DOCKERGEN_URL https://github.com/jwilder/docker-gen/releases/download/0.3.3/docker-gen-linux-amd64-0.3.3.tar.gz
RUN (cd /tmp && wget $DOCKERGEN_URL -O pkg.tgz && tar xvzf pkg.tgz && mv docker-gen /usr/local/bin && rm -rf /tmp/*)

EXPOSE 80
EXPOSE 443

ENTRYPOINT  ["/usr/bin/supervisord"]

CMD ["-n"]
