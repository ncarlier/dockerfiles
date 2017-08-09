.SILENT :
.PHONY : password

# App name
APPNAME:=nodered

# Define base image
BASEIMAGE=node:6

# Env flags
ENV_FLAGS?=--env-file=".env"

# Ports flags
PORT?=1880
PORTS_FLAGS?=-p $(PORT):1880

# Define run flags
RUN_CUSTOM_FLAGS?=$(PORTS_FLAGS) $(ENV_FLAGS)

# Include common Make tasks
root_dir:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
makefiles:=$(root_dir)/../makefiles
include $(makefiles)/help.Makefile
include $(makefiles)/docker.Makefile

## Generate a new password
password:
	$(DOCKER) run --rm \
		-it \
		--entrypoint="node-red-admin" \
		$(IMAGE) \
		hash-pw
	echo "Don't forget to add this password to the '.env' file:"
	echo "echo 'NODERED_PASSWORD=xxx' > .env"

