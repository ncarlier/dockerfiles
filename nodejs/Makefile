.SILENT :
.PHONY : build clean shell

USERNAME:=ncarlier
APPNAME:=nodejs
IMAGE:=$(USERNAME)/$(APPNAME)

all: build

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean:
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

shell:
	echo "Running $(IMAGE) docker image with shell access..."
	sudo docker run --rm -it --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

