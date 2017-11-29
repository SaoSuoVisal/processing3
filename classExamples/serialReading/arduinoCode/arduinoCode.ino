void setup() {
 Serial.begin(9600);
 Serial.setTimeout(100); //default 1 second of waiting
 pinMode(13, OUTPUT);
}

void loop() {
  if(Serial.available() > 0){
    String txt = Serial.readString();
    if(txt == "on"){
      digitalWrite(13, HIGH);
    }else if(txt == "off"){
      digitalWrite(13, LOW);
    }
  }
}
