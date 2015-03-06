.SILENT :

USERNAME:=microbox
APPNAME:=etcd
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-p 4001:4001 \
-p 7001:7001
endef

RUN_CMD=-name=test -addr=172.17.42.1:4001

include $(PWD)/../common/_Makefile

