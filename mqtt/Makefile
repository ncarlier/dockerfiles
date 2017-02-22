.SILENT :
.PHONY : pub sub

# App name
APPNAME:=mqtt

# Tests
topic?=foo/bar
payload?=ping

# Define port flags
PORT?=1883
PORTS_FLAGS?=-p $(PORT):1883

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile

## Publish $payload to a $topic
pub:
	echo "Running 'pub' client of container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="mosquitto_pub" \
		$(IMAGE) \
		-h $(IP) -t $(topic) -m $(payload)

## Subscribe to a $topic
sub:
	echo "Running 'sub' client of container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="mosquitto_sub" \
		$(IMAGE) \
		-h $(IP) -t $(topic)

## Install as a service (needs root privileges)
install: build
	echo "Install as a service..."
	cp etc/systemd/system/$(APPNAME).service /etc/systemd/system/
	systemctl daemon-reload
	systemctl restart $(APPNAME)
	$(MAKE) cleanup

