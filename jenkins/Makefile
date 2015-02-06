.SILENT :

USERNAME:=ncarlier
APPNAME:=jenkins
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-v /var/run/docker.sock:/var/run/docker.sock \
-e DOMAIN_NAME=jenkins.localnet \
-P
endef

include $(PWD)/../common/_Makefile

