import controlP5.*;

ControlP5 cp5;

void setup(){
  size(640, 320); //size of the screen of the phone
  background(0, 200, 200);  //Backgound of the phone (R,G,B)
  noStroke();
  cp5 = new ControlP5(this);
  cp5.addButton("Red")  //Add a button that have an even-name = RED
     .setCaptionLabel("Exit!") //Change the title of the button
     .setPosition((640/2) - 200, (320/2) - 30) //The position of the button(x,y)
     .setSize(100, 50) //The size of the button
     .setColorBackground(#FF0000); // set the background color (Hexa)
     
  cp5.addButton("Blue")  //Add a button that have an even-name = Blue, default the name
     .setCaptionLabel("Change title!") //Change the title of the button
     .setPosition((640/2) + 100, (320/2) - 30) //The position of the button(x,y)
     .setSize(100, 50) //The size of the button
     .setColorBackground(#FF0000) // set the background color (Hexa)
     .setColorForeground(#00FF00); //Hover the button with color
}

void draw(){
  
}

void Red(int theValue){ //the name of the function must have the same name as the button even-name (Red)
  background(255, 0, 0); //change background
  exit(); //leave the process 
}

void Blue(){
  surface.setTitle("Lame!"); //chang the title
  background(0, 0, 255); //Change background
}