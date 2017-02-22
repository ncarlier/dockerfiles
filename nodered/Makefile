.SILENT :

# App name
APPNAME:=nodered

# Define base image
BASEIMAGE?=node:6

# Installation env
env?=staging

# Env flags
ENV_FLAGS?=--env-file="./etc/default/$(env).env"

# Ports flags
PORT?=1880
PORTS_FLAGS?=-p $(PORT):1880

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS) $(ENV_FLAGS)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile

## Install as a service (needs root privileges)
install: build
	echo "Install as a service..."
	cp etc/systemd/system/$(APPNAME).service /etc/systemd/system/
	cp etc/default/$(env).env /etc/default/$(APPNAME)
	systemctl daemon-reload
	systemctl restart $(APPNAME)
	$(MAKE) cleanup

