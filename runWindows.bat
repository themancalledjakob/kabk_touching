echo off
title KABK touching - setup
echo "KABK touching - run sensor server"
cd node/02_server

set /P id="Enter the Arduino Port (find it under Tools/Port in the arduino software): "
node generic-server.js %id%
pause
