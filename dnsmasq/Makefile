.SILENT :
.PHONY : help build clean run stop rm shell

USERNAME:=ncarlier
APPNAME:=docker-dns
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 53:53/udp
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


## Build the image
build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

## Remove the image (also stop and delete the container)
clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

## Run the container
run:
	echo "Running $(IMAGE) docker image..."
	sudo docker run -d $(docker_run_flags) --name $(APPNAME) $(IMAGE)

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
	sudo docker run --rm -it $(docker_run_flags) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

