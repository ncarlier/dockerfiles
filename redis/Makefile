.SILENT :
.PHONY : client dump

USERNAME:=library
APPNAME:=redis
VERSION:=2

DATE:=`date +%Y-%m-%d`

define RUN_CUSTOM_FLAGS
-e SERVICE_PORT=6379 \
-P
endef

SHELL_CUSTOM_FLAGS:=-P

include $(PWD)/../common/_Makefile

## Run the container in client mode
client:
	echo "Running client of container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="redis-cli" \
		$(IMAGE) \
		-h $(IP)

## Dump database to disk
dump:
	echo "Dumping container $(APPNAME) data..."
	$(DOCKER) cp $(APPNAME):/var/lib/redis/dump.rdb ./dump.$DATE.rdb

## Install as a service (needs root privileges)
install: build
	echo "Install as a service..."
	cp etc/systemd/system/$(APPNAME).service /etc/systemd/system/
	systemctl daemon-reload
	systemctl restart $(APPNAME)
	$(MAKE) cleanup

