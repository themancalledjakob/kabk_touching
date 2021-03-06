# kabk_touching
repository for detecting people through capacitive touch sensor and distribute their data via websockets

# setup

## preparation
- install node from https://nodejs.org/en/

### On windows:
- doubleclick on 'setupWindows.bat' on Windows (the ".bat" might be hidden by file explorer)

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
- doubleclick on 'runWindows.bat' on Windows (the ".bat" might be hidden by file explorer)

## tryout the example!

either you can use live-preview in brackets or atom-live-server to use atom.
I'd actually recommend Atom, because you can use any browser with the live-preview.
With Brackets it is either only Chrome or some pain to set it up ;-) 

Atom:
https://atom.io
https://atom.io/packages/atom-live-server

tip: When changing an example, make a copy of the example folder first


# Troubleshooting
## When I doubleclick on runMac.command (I'm on a Mac) I get an error that it is from an unidentified developer
- Go to System Preferences/Security & Privacy/General and click on "Open Anyway"
Reason is that the little script is not downloaded via the appstore.

## I cannot upload to Arduino
- check that the port is selected under Tools/Port
- should that not work, check the next point

## It all worked once, but now I cannot upload new code to my arduino
- the arduino can only "talk" to one thing at the time. Try closing the window that opened when you doubleclicked (which prints "free,touched" etc) and try again. This is the server, which reads arduino data and sends it to the browser. When it's open, it blocks access and therefore you cannot upload.

## How do I open a terminal?
You don't need terminal anymore! :-)
If you still want to open it anyway for any reason, do it like this:

### Mac:
- press `cmd + space`
- type `terminal`
- hit `enter`
### Windows:
- press `Windowskey + R`
- type `cmd`
- hit `enter`

- let me know when you run into errors or troubles! I will put here a FAQ :-)
