.SILENT :
.PHONY : help clean shell start stop rm logs

USERNAME:=microbox
APPNAME:=etcd
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-p 4001:4001 \
-p 7001:7001
endef

all: help

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

## Remove the image (also stop and delete the container)
clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

## Start the container
start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d -h $(APPNAME) $(docker_run_flags) --name $(APPNAME) $(IMAGE) -name=test -addr=172.17.42.1:4001

## Stop the container
stop:
	echo "Stopping container $(APPNAME) ..."
	-sudo docker stop $(APPNAME)

## Delete the container
rm:
	echo "Deleting container $(APPNAME) ..."
	-sudo docker rm $(APPNAME)

## Run the container with shell access
shell:
	echo "Running $(IMAGE) docker image with shell access..."
	sudo docker run --rm -it -h $(APPNAME) $(docker_run_flags) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

## Show container logs
logs:
	echo "Logs of the $(APPNAME) container..."
	sudo docker logs -f $(APPNAME)

