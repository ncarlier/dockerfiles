.SILENT :

APPNAME:=nginx-logstash

define RUN_CUSTOM_FLAGS
-v /var/run/docker.sock:/tmp/docker.sock \
--link elasticsearch:elasticsearch \
-p 80:80
endef

include $(PWD)/../common/_Makefile

