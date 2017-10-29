import controlP5.*;
ControlP5 p5;
String valText = "This is the random number";
int x = 200; //Original x position
int y = 205; //Original y position
int fontSize = 20;

void setup(){
  size(640, 300);
  
  p5 = new ControlP5(this);
  p5.addButton("randNum")
    .setPosition(0,0)
    .setSize(640, 100)
    .setCaptionLabel("random Number");
}
void draw(){
  background(150);
  fill(0, 0, 0);
  textSize(fontSize);
  text(valText, x, y); //text(valueText, x, y)
}

void randNum(){
  int number = (int) random(0, 1000); //Casting to integer while the value is float
  valText = str(number); //Convert integer to string
  x = 290; //Change the x position
  fontSize = 50; //Change the font size
}