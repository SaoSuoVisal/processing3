import controlP5.*;
import processing.serial.*;
ControlP5 cp5;
Serial com;

void setup(){
  size(640, 320);
  cp5 = new ControlP5(this);
  cp5.addButton("on")
     .setPosition(100, 100)
     .setSize(200, 100)
     .setCaptionLabel("On");
     
  cp5.addButton("off")
     .setPosition(350, 100)
     .setSize(200, 100)
     .setCaptionLabel("off");
  
  com = new Serial(this, "COM15", 9600); //initalize Serial
          //Serial(this, COMPORT CONNECT TO, READING RATE);
}

void draw(){
  background(255);
}

void on(int value) {
  com.write("on"); //write on the serial pannel
  println("on");
}

void off(int value){
  com.write("off"); //write on the serial pannel
  println("off");
}