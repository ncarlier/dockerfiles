.SILENT :

APPNAME:=redsocks

define RUN_CUSTOM_FLAGS
--privileged=true \
--net=host
endef

RUN_FLAGS=-d --name $(APPNAME)

include $(PWD)/../common/_Makefile

