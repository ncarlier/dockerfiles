.SILENT :

USERNAME:=grafana
APPNAME:=grafana

define RUN_CUSTOM_FLAGS
-e DOMAIN_NAME=grafana.localnet \
--link influxdb:influxdb \
-P
endef

include $(PWD)/../common/_Makefile

