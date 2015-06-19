.SILENT :

USERNAME:=ncarlier
APPNAME:=dnsmasq
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged \
-v /var/run/docker.sock:/var/run/docker.sock \
-dns 8.8.8.8 \
-p 172.17.42.1:53:53/udp
endef

include $(PWD)/../common/_Makefile

