.SILENT :
.PHONY : build clean shell start stop rm logs

USERNAME:=ncarlier
APPNAME:=kibana
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--env-file $(PWD)/env.conf \
--link elasticsearch:elasticsearch \
-P
endef

all: build

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d $(docker_run_flags) --name $(APPNAME) $(IMAGE)

stop:
	echo "Stopping container $(APPNAME) ..."
	-sudo docker stop $(APPNAME)

rm:
	echo "Deleting container $(APPNAME) ..."
	-sudo docker rm $(APPNAME)

logs:
	echo "Logs of the $(APPNAME) container..."
	sudo docker logs -f $(APPNAME)

shell:
	echo "Running $(IMAGE) docker image with shell access..."
	sudo docker run --rm -it $(docker_run_flags) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

