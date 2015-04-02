.SILENT :

USERNAME:=ncarlier
APPNAME:=redsocks
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged=true \
--net=host
endef

RUN_FLAGS=-d --name $(APPNAME)

include $(PWD)/../common/_Makefile

