.SILENT :

USERNAME:=ncarlier
APPNAME:=redsocks
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged=true \
--net=host
endef

include $(PWD)/../common/_Makefile

