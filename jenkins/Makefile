.SILENT :

APPNAME:=jenkins

define RUN_CUSTOM_FLAGS
-v /var/run/docker.sock:/var/run/docker.sock \
-e DOMAIN_NAME=jenkins.localnet \
-P
endef

include $(PWD)/../common/_Makefile

