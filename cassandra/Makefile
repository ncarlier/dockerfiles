.SILENT :
.PHONY : client

APPNAME:=cassandra

define RUN_CUSTOM_FLAGS
-e SERVICE_PORT=9160 \
-e CASSANDRA_TOKEN=0
endef

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client to container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="cqlsh" \
		$(IMAGE) \
		$(IP)

