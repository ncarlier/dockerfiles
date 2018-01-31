.SILENT :

# App name
APPNAME:=grafana

# Based image
BASEIMAGE=grafana/grafana:latest

# Define port flags
PORT?=3000
PORTS_FLAGS?=-p $(PORT):3000

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS)

# Include common Make tasks
root_dir:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
makefiles:=$(root_dir)/../makefiles
include $(makefiles)/help.Makefile
include $(makefiles)/docker.Makefile

