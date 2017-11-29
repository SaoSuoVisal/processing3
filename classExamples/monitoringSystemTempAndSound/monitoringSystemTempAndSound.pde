import controlP5.*;
import processing.serial.*;

Serial com; 
ControlP5 cp5;
Chart myChart; 
Knob temp;
Knob pwm; 

void setup(){
  size(800, 400);
  smooth(); //make everything smooth even the lines
  noStroke();
  com = new Serial(this, "COM16", 9600);
  cp5 = new ControlP5(this);
  myChart = cp5.addChart("Lux of Light")
               .setPosition(50, 50)
               .setSize(400, 300)
               .setRange(0, 3000)
               .setView(Chart.LINE)
               .setColorCaptionLabel(color(255));
  
  myChart.addDataSet("incoming");
  myChart.setData("incoming", new float[100]);
  myChart.setStrokeWeight(2.5);
  myChart.setColors("incoming", color(255));
  
  temp = cp5.addKnob("Temperature")
            .setRange(0, 50)
            .setValue(0)
            .setPosition(500, 70)
            .setRadius(50)
            .setDragDirection(Knob.VERTICAL);
            
  pwm = cp5.addKnob("PWM")
           .setRange(0, 255)
           .setValue(0)
           .setPosition(500, 210)
           .setRadius(50)
           .setNumberOfTickMarks(20)
           .setTickMarkLength(4)
           .setColorForeground(color(255))
           .setColorBackground(color(0, 160, 100))
           .setColorActive(color(255, 255, 0))
           .setDragDirection(Knob.HORIZONTAL);
}

void draw(){
  background(0);
  if(com.available() > 0){
    String text = com.readString();
    if(text.startsWith("l")){
      String subText = text.substring(1);
      int value = int(subText);
      myChart.push("incoming", value);
    }else if(text.startsWith("t")){
      String subText = text.substring(1);
      int value = int(subText);
      temp.setValue(value - 273);
    }
  }
}


void PWM(int value) {
  com.write(str(value));
  delay(200);
}