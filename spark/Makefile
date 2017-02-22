.SILENT :
.PHONY :

# App name
APPNAME:=spark

# Override run flags
RUN_FLAGS:=-it -h $(APPNAME) --name $(APPNAME)

# Include common tasks
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
include $(ROOT_DIR)/../common/_Makefile

