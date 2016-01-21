.SILENT :

APPNAME:=nodered
env?=staging

ENV_FLAGS?=--env-file="./etc/default/$(env).env"
RUN_CUSTOM_FLAGS?=-p 1880:1880 $(ENV_FLAGS)

include $(PWD)/../common/_Makefile

## Install as a service (needs root privileges)
install: build
	echo "Install as a service..."
	cp etc/systemd/system/* /etc/systemd/system/
	cp etc/default/$(env).env /etc/default/$(APPNAME)
	systemctl daemon-reload
	systemctl restart $(APPNAME)
	$(MAKE) cleanup

