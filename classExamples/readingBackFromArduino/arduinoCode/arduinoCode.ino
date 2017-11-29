#define pinVal A0
int value;

const float T0 = 298.15;
const float R0 = 100000; // Resistor Value
const float belta = 3950;
const float r = 10000;
float R, vol, kelvin;

void setup() {
  Serial.begin(9600);
}

void loop() {
  value = analogRead(pinVal);
  vol = (value * 5) / 1023;
  R = (r * (5 - vol)) /vol;
  kelvin = (T0 * belta) / (belta + (kelvin * log(R/R0))); 
  Serial.print(String(kelvin));
  delay(500);
}
