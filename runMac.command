#!/bin/bash
currentDirectory="$(dirname "$BASH_SOURCE")"
cd $currentDirectory/node/02_server
npm install
echo "Please tell me your Arduino Port."
echo "You can find it in the Arduino Software under Tools/Port"
echo ""
read port
node generic-server.js $port
