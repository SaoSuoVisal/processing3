/*
  value:
    key = contains all the inputs from the keys 
    keyCode = contains all the special keys like Up, Down, Left, Right, Shift, Alt, Ctrl
    KeyPressed = boolean get the input, if there any key that where pressed or not
*/

void setUp(){
  size(640, 300);
}

void draw(){
  if(keyPressed){
    if(key == 'b' || key == 'B'){
      fill(0);
    }
  } else {
    fill(255);
  }
  
  rect(25, 25, 50, 50);
}