.SILENT :

USERNAME:=microbox
APPNAME:=etcd
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-p 4001:4001 \
-p 7001:7001
endef

include $(PWD)/../common/_Makefile

## Start the container
start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d -h $(APPNAME) $(docker_run_flags) --name $(APPNAME) $(IMAGE) -name=test -addr=172.17.42.1:4001

