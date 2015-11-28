.SILENT :
.PHONY : pub sub

APPNAME:=mqtt

topic?=foo/bar
payload?=ping

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

