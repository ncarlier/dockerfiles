# Gatling docker image.
#
# VERSION 0.0.1

FROM java:8-jdk

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Gating version
ENV GATLING_VERSION 2.1.7
ENV GATLING_URL https://oss.sonatype.org/content/repositories/releases/io/gatling/highcharts/gatling-charts-highcharts-bundle/${GATLING_VERSION}/gatling-charts-highcharts-bundle-${GATLING_VERSION}-bundle.zip
ENV GATLING_HOME /opt/gatling

# Install Gatling
RUN mkdir -p $GATLING_HOME /var/opt/gatling && \
    curl -sf -o /tmp/gatling.zip -L $GATLING_URL && \
    unzip /tmp/gatling.zip -d /tmp && \
    mv /tmp/gatling-charts-highcharts-bundle-$GATLING_VERSION/* $GATLING_HOME && \
    rm -rf /tmp/gatling-charts-highcharts-bundle-$GATLING_VERSION /tmp/gatling.zip

# Working directory
WORKDIR /var/opt/gatling

CMD ["/opt/gatling/bin/gatling.sh"]
