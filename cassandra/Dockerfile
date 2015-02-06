# Cassandra Docker image.
#
# VERSION 0.0.1

FROM spotify/cassandra:cluster

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Setup entrypoint script
ADD entrypoint /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]

