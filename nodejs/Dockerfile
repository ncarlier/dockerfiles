# Node.JS docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Add nodejs repository and install node
RUN apt-get update && apt-get install -y wget build-essential && \
    wget --no-check-certificate -O - https://deb.nodesource.com/setup_5.x | bash && \
    apt-get install -y nodejs && \
    apt-get clean

# Create app directories
RUN mkdir -p /usr/src/app

# Setup working directory
WORKDIR /usr/src/app

# Add package definition
ONBUILD COPY package.json /usr/src/app/

# Install
ONBUILD RUN npm install

# Copy sources
ONBUILD COPY . /usr/src/app

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
