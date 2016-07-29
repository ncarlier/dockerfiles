.SILENT :
.PHONY : pub sub

APPNAME:=mqtt

topic?=foo/bar
payload?=ping

RUN_CUSTOM_FLAGS?=-p 1883:1883

include $(PWD)/../common/_Makefile

## Publish $payload to a $topic
pub:
	echo "Running 'pub' client of container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="mosquitto_pub" \
		$(IMAGE) \
		-h $(IP) -t $(topic) -m $(payload)

## Subscribe to a $topic
sub:
	echo "Running 'sub' client of container $(APPNAME) with IP=$(IP)..."
	$(DOCKER) run --rm \
		-it \
		--entrypoint="mosquitto_sub" \
		$(IMAGE) \
		-h $(IP) -t $(topic)

## Install as a service (needs root privileges)
install: build
	echo "Install as a service..."
	cp etc/systemd/system/$(APPNAME).service /etc/systemd/system/
	systemctl daemon-reload
	systemctl restart $(APPNAME)
	$(MAKE) cleanup

