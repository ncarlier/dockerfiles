.SILENT :
.PHONY : client

USERNAME:=ncarlier
APPNAME:=cassandra
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-e SERVICE_PORT=9160 \
-e CASSANDRA_TOKEN=0 \
-P
endef

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client to container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="cqlsh" \
		$(IMAGE) \
		$(IP)

