#!/bin/bash

cd /usr/local/lib/node_modules/node-red

admin_password=$(node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" ${NODERED_PASSWORD})

cd

mkdir /root/.node-red

echo "Creating Node-RED configuration file..."
sed -e "s|\${admin_password}|${admin_password}|" \
  /etc/node-red-settings.tmpl > /root/.node-red/settings.js

echo "Starting Node-RED..."
node-red
