.SILENT :
.PHONY : password

# App name
APPNAME:=keycloak-proxy

# Define base image
BASEIMAGE=alpine:latest

# Env flags
ENV_FLAGS?=--env-file=".env"

# Ports flags
PORT?=8080
PORTS_FLAGS?=-p $(PORT):8080

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS) $(ENV_FLAGS)

# Include common Make tasks
root_dir:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
makefiles:=$(root_dir)/../makefiles
include $(makefiles)/help.Makefile
include $(makefiles)/docker.Makefile

