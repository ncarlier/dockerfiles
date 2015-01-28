.SILENT :
.PHONY : build clean run shell cleanup stop

USERNAME:=ncarlier
APPNAME:=redsocks
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--privileged=true \
--net=host
endef

all: build cleanup

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean:
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

run:
	echo "Running $(IMAGE) docker image..."
	sudo docker run -d $(docker_run_flags) -h $(APPNAME) --name $(APPNAME) $(IMAGE)

shell:
	echo "Running $(IMAGE) docker image with shell access..."
	sudo docker run --rm -it $(docker_run_flags) -h $(APPNAME) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

cleanup:
	echo "Removing dangling docker images..."
	-sudo docker images -q --filter 'dangling=true' | xargs sudo docker rmi

stop:
	echo "Stopping container $(APPNAME) ..."
	-sudo docker stop $(APPNAME)
