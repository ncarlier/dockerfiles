.SILENT :
.PHONY : build clean start stop rm logs shell

USERNAME:=ncarlier
APPNAME:=jenkins
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
-v /var/run/docker.sock:/var/run/docker.sock \
--env-file $(PWD)/env.conf \
-P
endef

all: build

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean:
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

start:
	echo "Running $(IMAGE) docker image..."
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

