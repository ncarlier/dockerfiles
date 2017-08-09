# Node-RED Docker image

## Description

[Node-RED](http://nodered.org/) Docker image.

## Usage

First you have to generate a secured password and store it inside the `.env`
file.

```bash
$ make password
$ echo 'NODERED_PASSWORD=xxx' > .env
```

Now, you can start the container:

```bash
docker run -d -P --name nodered \
  --env-file=".env" \
  ncarlier/nodered
```

Build the image with `make`.

> Use `make help` to see available commands for this image.
