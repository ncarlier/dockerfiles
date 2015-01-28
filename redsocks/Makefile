.SILENT :
.PHONY : build clean cleanup shell start stop rm logs

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

clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

cleanup:
	echo "Removing dangling docker images..."
	-sudo docker images -q --filter 'dangling=true' | xargs sudo docker rmi

start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d $(docker_run_flags) -h $(APPNAME) --name $(APPNAME) $(IMAGE)

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
	sudo docker run --rm -it $(docker_run_flags) -h $(APPNAME) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash
