.SILENT :

APPNAME:=influxdb

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client to container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="/opt/influxdb/influx" \
		$(IMAGE) \
		-host $(IP)

