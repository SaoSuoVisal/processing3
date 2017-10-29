import controlP5.*;

ControlP5 p5;
Button btn1;
Button btn2;

void setup(){
  size(640, 320);
  p5 = new ControlP5(this);
  btn1 = p5.addButton("button1")
           .setPosition(0, 0)
           .setSize(200, 100);
           
           
  btn2 = p5.addButton("button2")
           .setPosition(440, 0)
           .setSize(200, 100);
           
}

void draw(){}

void button1(){ //one click that changes other part of the button
  btn2.setColorBackground(#000000); 
}