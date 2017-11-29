#include <Wire.h>

#include <SPI.h>

#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define RE_pin LED_BUILTIN
int val;
int X;
int BASE;

Adafruit_SSD1306 display(LED_BUILTIN);

void setup(){
  Serial.begin(9600);
  Serial.setTimeout(100);
  
  display.begin(0x3c);
  display.clearDisplay();
  display.print(val, BASE);
  
  display.setCursor(1, 1);
  display.setTextColor(WHITE);
}
void loop(){
  if(Serial.available() > 0){
    display.setCursor(1, 1);
    String txt = Serial.readString();
    
    display.print(String(txt));
    display.display();
    display.clearDisplay();
  }
}
