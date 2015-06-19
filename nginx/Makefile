.SILENT :

USERNAME:=ncarlier
APPNAME:=nginx
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-v /var/run/docker.sock:/tmp/docker.sock \
-p 80:80
endef

include $(PWD)/../common/_Makefile

