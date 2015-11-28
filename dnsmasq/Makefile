.SILENT :

APPNAME:=dnsmasq

define RUN_CUSTOM_FLAGS
--privileged \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 172.17.42.1:53:53/udp
endef

include $(PWD)/../common/_Makefile

