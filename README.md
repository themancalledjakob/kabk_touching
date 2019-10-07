# kabk_touching
repository for detecting people through capacitive touch sensor and distribute their data via websockets

#setup

## preparation Mac
- open terminal
- install brew (http://brew.sh) type `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- hit `enter`
- wait
- type `brew update`
- hit `enter`
- type `brew install node`
- hit `enter`

## preparation Windows
- install python (e.g. 3.7, but try different versions if it doesn't work)
- add python path to system path (google this, it's explained on python website)
- install node (https://nodejs.org/en/download/)

## Arduino setup
- download this repository or clone it
- in your file explorer go to `kabk_touching/arduino/02_threshold`
- open `02_threshold.ino` with Arduino software
- upload the sketch on your arduino

## Sensor setup
- setup the sensor as described last lesson, you can look it up on either of these sites:
- https://playground.arduino.cc/Main/CapacitiveSensor/
- https://www.instructables.com/id/How-To-Use-Touch-Sensors-With-Arduino/

## Sensor Server setup
- open a new terminal
- type `cd ` (don't forget the space at the end)
- drag and drop the folder `kabk_touching/node/02_server/` in the terminal
- hit `enter`
- type `npm install`
- hit `enter`

# usage

## run a sensor server
- open a new terminal
- type `cd ` (don't forget the space at the end)
- drag and drop the folder `kabk_touching/node/02_server/` in the terminal
- hit `enter`
- type `node generic-server.js`
- hit `enter`

## tryout the example!
- open a new terminal
- type `cd ` (don't forget the space at the end)
- drag and drop the folder `kabk_touching/web/` in the terminal
- hit `enter`
- on a mac/linux type: `php -S localhost:9999`
- on a windows type: `python -m SimpleHTTPServer 9999`
- on a windows alternatively type: `python -m http.server 9999`
- hit `enter`
- open `localhost:9999/02_threshold/` in a new browser window (don't forget the last `/`)


tip: When changing an example, make a copy of the example folder first


# Troubleshooting
## I open the browser on `localhost:9999/02_threshold`, but nothing opens
- could it be that you forget the last `/` in `localhost:9999/02_threshold/` ?

- let me know when you run into errors or troubles! I will put here a FAQ :-)
