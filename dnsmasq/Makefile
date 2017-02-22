.SILENT :

APPNAME:=dnsmasq

# Define custom port
PORT?=53
PORTS_FLAGS=-p 172.17.42.1:$(PORT):53/udp

# Mount docker sock
SOCK_FLAGS=-v /var/run/docker.sock:/var/run/docker.sock

# Define run flags
RUN_CUSTOM_FLAGS=--privileged $(SOCK_FLAGS) $(PORTS_FLAGS)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile


