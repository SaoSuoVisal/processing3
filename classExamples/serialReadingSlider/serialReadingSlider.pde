import controlP5.*;
import processing.serial.*;
ControlP5 cp5;
Serial com;
int sliderValue = 100;

void setup(){
  size(640, 320);
  cp5 = new ControlP5(this);
  cp5.addSlider("slider")
     .setRange(0, 255)
     .setSize(255, 50)
     .setPosition(50, 135)
     .setValue(sliderValue);
  
  com = new Serial(this, "COM15", 9600); //initalize Serial
          //Serial(this, COMPORT CONNECT TO, READING RATE);
}

void draw(){
  background(255);
}

void slider(int value){
  com.write(str(value)); //write on the serial pannel
  println("slider: " + str(value));
  delay(100); //create space between two values
}