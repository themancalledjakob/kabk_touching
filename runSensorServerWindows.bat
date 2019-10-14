echo off
title KABK touching - setup
echo "KABK touching - run sensor server"
cd node/02_server
pause
set NULL_VAL=null
set NODE_VER=%NULL_VAL%
set NODE_EXEC=node-v10.15.3-x86.msi
pause
node -v >.tmp_nodever
set /p NODE_VER=<.tmp_nodever
del .tmp_nodever

IF "%NODE_VER%"=="%NULL_VAL%" (
	echo.
	echo Node.js is not installed! Please press a key to download and install it from the website that will open.
	PAUSE
	start "" http://nodejs.org/dist/v10.15.3/%NODE_EXEC%
	echo.
	echo.
	echo After you have installed Node.js, press a key to shut down this process. Please restart it again afterwards.
	PAUSE
	EXIT
) ELSE (
	echo A version of Node.js ^(%NODE_VER%^) is installed. Proceeding...
)

npm install

set /p id="Enter the Arduino Port (find it under Tools/Port in the arduino software): "
node generic-server.js %id%
pause
