.SILENT :
.PHONY : help volume build clean shell start stop rm logs client dump restore

USERNAME:=ncarlier
APPNAME:=mongodb
IMAGE:=$(USERNAME)/$(APPNAME)
IP:=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(APPNAME)`
DATE:=`date +%Y-%m-%d`

define docker_run_flags
-e SERVICE_PORT=27017 \
-P
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
	sudo docker run -d -h $(APPNAME) --name $(APPNAME) $(IMAGE)

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
	sudo docker run --rm -it -h $(APPNAME) --volumes-from $(APPNAME)_volumes --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

## Show container logs
logs:
	echo "Logs of the $(APPNAME) container..."
	sudo docker logs -f $(APPNAME)

## Run the container in client mode
client:
	echo "Running client to container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="mongo" \
		$(IMAGE) \
		$(IP)/admin

## Dump database to disk
dump:
	echo "Dumping container $(APPNAME) data..."
	sudo docker run --rm \
		--volumes-from $(APPNAME)_volumes \
		--entrypoint='mongodump' \
		$(IMAGE) \
		-h $(IP) --out /var/opt/mongodb/$(DATE)

## Restore database from disk (need BACKUP_NAME)
restore:

ifndef BACKUP_NAME
	$(error BACKUP_NAME is undefined)
else
	echo "Restoring container $(APPNAME) data from backup $(BACKUP_NAME)..."
	sudo docker run --rm \
		--volumes-from $(APPNAME)_volumes \
		--entrypoint='mongorestore' \
		$(IMAGE) \
		--host $(IP) /var/opt/mongodb/$(BACKUP_NAME)
endif

