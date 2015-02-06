.SILENT :

USERNAME:=ncarlier
APPNAME:=kibana
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-e DOMAIN_NAME=kibana.localnet \
--link elasticsearch:elasticsearch \
-P
endef

include $(PWD)/../common/_Makefile

