.SILENT :
.PHONY : pub sub

# App name
APPNAME:=mqtt

# Based image
BASEIMAGE=alpine:latest
# Used shell
SHELL_BIN?=/bin/ash

# Tests
topic?=foo/bar
payload?=ping

# Define port flags
PORT?=1883
PORTS_FLAGS?=-p $(PORT):1883

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS)

# Include common Make tasks
root_dir:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
makefiles:=$(root_dir)/../makefiles
include $(makefiles)/help.Makefile
include $(makefiles)/docker.Makefile

## Publish $payload to a $topic
pub:
	echo "Running 'pub' client of container $(APPNAME)..."
	$(DOCKER) run --rm \
		-it \
		--network=container:$(APPNAME) \
		--entrypoint="mosquitto_pub" \
		$(IMAGE) \
		-h $(APPNAME) -t $(topic) -m $(payload)

## Subscribe to a $topic
sub:
	echo "Running 'sub' client of container $(APPNAME)..."
	$(DOCKER) run --rm \
		-it \
		--network=container:$(APPNAME) \
		--entrypoint="mosquitto_sub" \
		$(IMAGE) \
		-h $(APPNAME) -t $(topic)

