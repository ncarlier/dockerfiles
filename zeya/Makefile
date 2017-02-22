.SILENT :

# App name
APPNAME:=zeya

# Define custom port
PORT?=8000
PORTS_FLAGS=-p $(PORT):8000

# Define music directory
MUSIC_DIR?=/data/audios

# Define volume flags
DATA_VOLUME_FLAGS=-v $(MUSIC_DIR):/var/opt/zeya

# Define run flags
RUN_CUSTOM_FLAGS=$(PORTS_FLAGS) $(DATA_VOLUME_FLAGS)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile

