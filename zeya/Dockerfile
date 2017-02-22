# Zeya docker image.
#
# VERSION 0.0.1

FROM debian:jessie

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -y zeya

# Expose port
EXPOSE 8000

ENTRYPOINT  ["zeya"]
CMD ["--path=/var/opt/zeya", "--port=8000"]
