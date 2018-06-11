#########################################
# Keycloak Proxy
#########################################

FROM alpine:latest

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

ARG KEYCLOAK_PROXY_VERSION=v2.2.1

# Install packages
RUN apk add --update curl && rm -rf /var/cache/apk/*

# Fix lib dep
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# Install binary
RUN curl -sL -o /usr/local/bin/keycloak-proxy \
    "https://github.com/gambol99/keycloak-proxy/releases/download/${KEYCLOAK_PROXY_VERSION}/keycloak-proxy-linux-amd64" \
  && chmod +x /usr/local/bin/keycloak-proxy

ENTRYPOINT ["/usr/local/bin/keycloak-proxy"]

