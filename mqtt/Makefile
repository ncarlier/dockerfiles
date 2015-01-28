.SILENT :
.PHONY : build clean shell start stop rm pub sub

USERNAME:=ncarlier
APPNAME:=mqtt
IMAGE:=$(USERNAME)/$(APPNAME)
IP:=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(APPNAME)`
topic?=foo/bar
payload?=ping

all: build

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean: stop rm
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

start:
	echo "Starting $(IMAGE) docker image..."
	sudo docker run -d -h $(APPNAME) --name $(APPNAME) $(IMAGE)

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
	sudo docker run --rm -it -h $(APPNAME) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

pub:
	echo "Running 'pub' client of container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="mosquitto_pub" \
		$(IMAGE) \
		-h $(IP) -t $(topic) -m $(payload)

sub:
	echo "Running 'sub' client of container $(APPNAME) with IP=$(IP)..."
	sudo docker run --rm \
		-it \
		--entrypoint="mosquitto_sub" \
		$(IMAGE) \
		-h $(IP) -t $(topic)

