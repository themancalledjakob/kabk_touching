/** 
 * Serial Call-Response 
 * by Tom Igoe. 
 * 
 * Sends a byte out the serial port, and reads 3 bytes in. 
 * Sets foregound color, xpos, and ypos of a circle onstage
 * using the values returned from the serial port. 
 * Thanks to Daniel Shiffman  and Greg Shakar for the improvements.
 * 
 * Note: This sketch assumes that the device on the other end of the serial
 * port is going to send a single byte of value 65 (ASCII A) on startup.
 * The sketch waits for that byte, then sends an ASCII A whenever
 * it wants more data. 
 */
 

import processing.serial.*;

Serial arduino;                       // The serial port
String data;

void setup() {
  size(256, 256);  // Stage size
  noStroke();      // No border on the next thing drawn

  // Print a list of the serial ports, for debugging purposes:
  printArray(Serial.list());

  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0];
  arduino = new Serial(this, portName, 9600);
}

  int r = 0;
  int g = 0;
  int b = 0;
void draw() {
  while (arduino.available() > 0) {
    data = arduino.readStringUntil(10);
    if (data != null) {
      String[] values = split(data, ',');
      printArray(values[1]);
      if (values[0].equals("touched")) {
        r = 255;
      } else {
        r = 0;
      }
      if (values[1].equals("touched")) {
        g = 255;
      } else {
        g = 0;
      }
    }
  }
  background(r,g,b);
}
