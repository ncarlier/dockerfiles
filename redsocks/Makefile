.SILENT :

# App name
APPNAME:=redsocks

# Define run flags
RUN_CUSTOM_FLAGS=--privileged=true --net=host

# Override run flags
RUN_FLAGS=-d --name $(APPNAME)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile

