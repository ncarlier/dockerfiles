.SILENT :

USERNAME:=ncarlier
APPNAME:=dnsmasq
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 53:53/udp
endef

include $(PWD)/../common/_Makefile

