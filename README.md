# kabk_touching
repository for detecting people through capacitive touch sensor and distribute their data via websockets

# setup

## preparation
- install node from https://nodejs.org/en/

## Sensor setup
- setup the sensor as described last lesson, you can look it up on either of these sites:
- https://playground.arduino.cc/Main/CapacitiveSensor/
- https://www.instructables.com/id/How-To-Use-Touch-Sensors-With-Arduino/
- there is also an image on slack

## Arduino setup
- download this repository or clone it (scroll up, the green button download ZIP)
- in your file explorer go to `kabk_touching/arduino/02_threshold`
- open `02_threshold.ino` with Arduino software
- in Arduino software go to `Sketch/include library/manage libraries`
- search and install `CapacitiveSensor` library
- upload the sketch on your arduino

# usage

## run a sensor server

- doubleclick on 'runMac.command' on a Mac
- doubleclick on 'runSensorServerWindows.bat' on Windows (the ".bat" might be hidden by file explorer)

## tryout the example!

either you can use live-preview in brackets or atom-live-server to use atom.
I'd actually recommend Atom, because you can use any browser with the live-preview.
With Brackets it is either only Chrome or some pain to set it up ;-) 

Atom:
https://atom.io
https://atom.io/packages/atom-live-server

tip: When changing an example, make a copy of the example folder first


# Troubleshooting
## I cannot upload to Arduino
- check that the port is selected under Tools/Port


## I open the browser on `localhost:9999/`, but nothing opens
- could it be that you forget the last `/` in `localhost:9999/` ?

## How do I open a terminal?
### Mac:
- press `cmd + space`
- type `terminal`
- hit `enter`
### Windows:
- press `Windowskey + R`
- type `cmd`
- hit `enter`

- let me know when you run into errors or troubles! I will put here a FAQ :-)
