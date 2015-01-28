# Elasticsearch docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y openjdk-7-jre wget

# Setup JAVA home
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Install elasticsearch binaries
ENV ES_URL https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.4.tar.gz
ENV ES_HOME /opt/elasticsearch
RUN (cd /tmp && wget $ES_URL -O pkg.tar.gz && tar zxf pkg.tar.gz && mv elasticsearch-* $ES_HOME)
RUN rm -rf /tmp/*
RUN $ES_HOME/bin/plugin -install elasticsearch/elasticsearch-mapper-attachments/2.2.1
RUN $ES_HOME/bin/plugin -install com.github.richardwilly98.elasticsearch/elasticsearch-river-mongodb/2.0.1

# Make backup directory
RUN mkdir /var/opt/elasticsearch

# Expose Elasticsearch ports
EXPOSE 9200
EXPOSE 9300

ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
CMD []
