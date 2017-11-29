#define pinTemp A0
#define pinLight A1
int value;

const float T0 = 298.15;
const float R0 = 10000; // Resistor Value
const float belta = 3950;
const float r1 = 10000;
const float r2 = 10000;
float val1, val2;
float vol1, vol2, temp;

float Rldr, Lux, R, T;

void setup() {
  Serial.begin(9600);
  Serial.setTimeout(100);
}

void loop() {
  NTC();
  ldr();

  if(Serial.available() > 0){
    String text = Serial.readString();
    int pwm = text.toInt();
    analogWrite(13, pwm);
  }
}

void NTC() {
  val1 = analogRead(pinTemp);
  vol1 = (val1 * 5) / 1023;
  R = (r1 * (5 - vol1)) /vol1;
  T = (T0 * belta) / (belta + (T0 * log(R/R0))); 
  Serial.print(String("t") + String(T));
  delay(500);  
}

void ldr(){
  val2 = analogRead(pinLight);  
  vol2 = (val2 * 5) / 1023;
  Rldr = ((vol2 * r2) / (5 - vol2)) / 1000;
  Lux = 500 / Rldr;
  Serial.print(String("l") + String(Lux));
  delay(500);
}
