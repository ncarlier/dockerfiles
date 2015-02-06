.SILENT :

USERNAME:=ncarlier
APPNAME:=nginx-logstash
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-v /var/run/docker.sock:/tmp/docker.sock \
--link elasticsearch:elasticsearch \
-p 80:80
endef

include $(PWD)/../common/_Makefile

