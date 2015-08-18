/**
 * Author: Benjamin Low (benjamin.low@digimagic.com.sg)
 * Date: July 2015
 * Description: Visualiser for proximity sensor reading from Arduino.
 * Arduino sends the number of balls detected passing through a tunnel.
 */


import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup() 
{
  size(displayWidth, displayHeight);

  printArray(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
  textSize(600);
  textAlign(CENTER,CENTER);
}

void draw()
{
        background(0);
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }
   text(val, displayWidth/2, displayHeight/2);
}
