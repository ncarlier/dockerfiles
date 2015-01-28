.SILENT :
.PHONY : help volume build clean start stop rm logs status dump

USERNAME:=ncarlier
APPNAME:=elasticsearch
IMAGE:=$(USERNAME)/$(APPNAME)
IP:=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(APPNAME)`

define docker_run_flags
--link mongodb:mongodb \
--volumes-from $(APPNAME)_volumes
endef

all: build

## This help screen
help:
	printf "Available targets:\n\n"
	awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-15s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

## Build the volume image
volume:
	echo "Building $(APPNAME) volumes..."
	sudo docker run -v ~/var/$(APPNAME):/var/opt/$(APPNAME) --name $(APPNAME)_volumes busybox true

## Build the image
build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

## Remove the image (also stop and delete the container)
clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

## Start the container
start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d $(docker_run_flags) -h $(APPNAME) --name $(APPNAME) $(IMAGE)

## Stop the container
stop:
	echo "Stopping container $(APPNAME) ..."
	-sudo docker stop $(APPNAME)

## Delete the container
rm:
	echo "Deleting container $(APPNAME) ..."
	-sudo docker rm $(APPNAME)

## Show container logs
logs:
	echo "Logs of the $(APPNAME) container..."
	sudo docker logs -f $(APPNAME)

## Get the status of th container
status:
	echo "Running status command on container $(APPNAME) with IP=$(IP)..."
	curl "$(IP):9200"

