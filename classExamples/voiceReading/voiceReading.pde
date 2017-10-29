import controlP5.*;
import guru.ttslib.*; //TEXT and the compputer SPEAK

TTS tts;
ControlP5 cp5;
Button btn; //Class name so we can access it easily
String x;   //String for time
       
void setup(){
  size(640, 320); //Standard screen
  tts = new TTS();
  cp5 = new ControlP5(this);
  tts.setPitch(0); //SET different tones
  btn = cp5.addButton("st")
           .setColorBackground(#FC051A)
           .setPosition(100, 100)
           .setSize(200, 100);
  btn.setCaptionLabel("Tell me time.");         
}
void draw(){
  int s = second();
  int m = minute();
  int h = hour();
  
  x = h + " hours" + m + " minutes" + s + " second ";
      
}
void st(){
  tts.speak("The time is " + x);
}