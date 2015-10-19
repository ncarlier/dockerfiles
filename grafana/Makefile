.SILENT :

USERNAME:=grafana
APPNAME:=grafana
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-e DOMAIN_NAME=grafana.localnet \
--link influxdb:influxdb \
-P
endef

include $(PWD)/../common/_Makefile

