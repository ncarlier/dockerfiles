.SILENT :
.PHONY : client dump

USERNAME:=ncarlier
APPNAME:=redis
IMAGE:=$(USERNAME)/$(APPNAME)

DATE:=`date +%Y-%m-%d`

define docker_run_flags
-e SERVICE_PORT=6379 \
-P
endef

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client of container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="redis-cli" \
		$(IMAGE) \
		-h $(IP)

## Dump database to disk
dump:
	echo "Dumping container $(APPNAME) data..."
	sudo docker cp $(APPNAME):/var/lib/redis/dump.rdb ./dump.$DATE.rdb

