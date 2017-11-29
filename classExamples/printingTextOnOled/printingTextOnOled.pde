import processing.serial.*;
import controlP5.*;

ControlP5 cp5;
Serial com;

void setup(){
  size(300, 100);
  com = new Serial(this, "COM17", 9600);
  cp5 = new ControlP5(this);
  cp5.addTextfield("txtSend")
     .setPosition(20, 20)
     .setSize(180, 40)
     .setFont(createFont("arial", 20));
}

void draw(){
  background(0);
}

void txtSend(String theText){
  com.write(theText);
}