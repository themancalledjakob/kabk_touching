#include <CapacitiveSensor.h>

/*
 * CapitiveSense Library Demo Sketch
 * Paul Badger 2008
 * Uses a high value resistor e.g. 10M between send pin and receive pin
 * Resistor effects sensitivity, experiment with values, 50K - 50M. Larger resistor values yield larger sensor values.
 * Receive pin is the sensor pin - try different amounts of foil/metal on this pin
 */

CapacitiveSensor   cs_4_2 = CapacitiveSensor(4,2);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired
CapacitiveSensor   cs_4_6 = CapacitiveSensor(4,6);        // 10M resistor between pins 4 & 6, pin 6 is sensor pin, add a wire and or foil

long threshold_1 = 50;
long threshold_2 = 50;

void setup()                    
{
   Serial.begin(9600);
}

void loop()                    
{
    long start = millis();
    long total1 =  cs_4_2.capacitiveSensor(30);
    long total2 =  cs_4_6.capacitiveSensor(30);

    String output1 = "free";
    if (total1 > threshold_1) {
      output1 = "touched";
    }
    String output2 = "free";
    if (total2 > threshold_2) {
      output2 = "touched";
    }
    Serial.print(output1);                  // print sensor output 1
    Serial.print(",");
    Serial.println(output2);                  // print sensor output 2
    Serial.print(",");
    Serial.print(total1);                  // print raw sensor output 1
    Serial.print("/");
    Serial.print(threshold_1);                  // print sensor threshold 1
    Serial.print(",");
    Serial.println(total2);                  // print raw sensor output 2
    Serial.print("/");
    Serial.print(threshold_2);                  // print sensor threshold 2

    delay(100);                             // arbitrary delay to limit data to serial port 
}
