#########################################
# Grafana with some plugins
#########################################

FROM grafana/grafana:latest

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install plugins
RUN grafana-cli plugins install grafana-worldmap-panel && \
      grafana-cli plugins install grafana-piechart-panel && \
      grafana-cli plugins install natel-discrete-panel && \
      grafana-cli plugins install raintank-worldping-app


