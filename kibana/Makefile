.SILENT :

APPNAME:=kibana

define RUN_CUSTOM_FLAGS
-e DOMAIN_NAME=kibana.localnet \
--link elasticsearch:elasticsearch \
-P
endef

include $(PWD)/../common/_Makefile

