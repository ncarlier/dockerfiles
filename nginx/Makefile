.SILENT :

APPNAME:=nginx

define RUN_CUSTOM_FLAGS
-v /var/run/docker.sock:/tmp/docker.sock \
-p 80:80
endef

include $(PWD)/../common/_Makefile

