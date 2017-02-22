# Spark docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y wget default-jdk

# Install cwspark binaries
ENV SPARK_URL http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
ENV SPARK_HOME /opt/spark
RUN (cd /tmp && wget $SPARK_URL -O pkg.tar.gz && tar zxf pkg.tar.gz && mv spark-* $SPARK_HOME && rm -rf /tmp/*)

# Create user
RUN adduser --disabled-password spark

# Create working directory
RUN mkdir -p /var/lib/spark && chown spark.spark /var/lib/spark

# Set user
USER spark

# Setup working directory
WORKDIR /var/lib/spark

CMD ["/opt/spark/bin/spark-shell"]
