/*
  There are three possible out come in the button those are left click, right click, and center click (wheel)
  
  functions : 
    mouseClick()
    mouseDragged()
    mouseMoved()
    mousePressed()
    mouseReleased()
    mouseWheel()
    
  returns :
    mouseButton - returns the value of the event from the mouse
    mousePressed - returns boolean is there anything events from the mouse
    mouseX - returns X value
    mouseY - returns Y value
    pmouseX - pre mouse X value or the last value of x
    pmouseY - pre mouse Y value or the last value of y
*/

void setup(){}
void draw(){
  rect(25, 25, 50, 50);
}

void mousePressed() {
  if(mouseButton == LEFT){
    fill(0);
  } else if(mouseButton == RIGHT){
    fill(255);
  } else {
    fill(126);  
  }
}