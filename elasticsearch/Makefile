.SILENT :

USERNAME:=ncarlier
APPNAME:=elasticsearch
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--link mongodb:mongodb
endef

include $(PWD)/../common/_Makefile

