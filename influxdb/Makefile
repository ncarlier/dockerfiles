.SILENT :

USERNAME:=ncarlier
APPNAME:=influxdb
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
endef

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client to container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="/opt/influxdb/influx" \
		$(IMAGE) \
		-host $(IP)

