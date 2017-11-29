import controlP5.*;
import processing.serial.*;

Serial com; 
ControlP5 cp5;
Textlabel lbltemp; //textbox with text
double value;
String text;
PFont font; // vairable fro font

void setup(){
  size(700, 400);
  font = createFont("Arial", 50);
  com = new Serial(this, "COM16", 9600);
  cp5 = new ControlP5(this);
  lbltemp = new Textlabel(cp5, " ", 250, 170, 250, 250);
                       //(function add frmo cp5, start text, X, Y, sizeX, sizeY);
  lbltemp.setFont(font); // set the font
}

void draw(){
  background(0);
  lbltemp.draw(this);            // write what ever text
  if(com.available() > 0){
    text = com.readString();     //read the value
    lbltemp.setText(text + " K"); // write the text
    delay(500);
  }
}