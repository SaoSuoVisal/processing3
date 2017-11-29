import processing.serial.*;
import controlP5.*;

ControlP5 cp5;
Serial com;

void setup(){
  size(300, 100);
  com = new Serial(this, "COM17", 9600);
  cp5 = new ControlP5(this);
}

void draw(){
  background(0);
}

void keyTyped(){
  
  if((int) key != 8){
    com.write(key);
  }
}

void keyPressed(){
  println(key);
  
  println(keyCode);
  if((int) keyCode == 17){
    println(keyCode);
    com.write("clear");
  }  
}