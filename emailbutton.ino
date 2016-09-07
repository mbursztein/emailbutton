void setup(){
  // declare digital pin 2 as input, pin 3 as ouput
  pinMode(2,INPUT); // this is our button
  pinMode(3,OUTPUT); // this is our LED
  Serial.begin(9600); // initialize seria port
}

void loop(){
  // check if there's voltage on input pin
  if (digitalRead(2) == HIGH) {
    digitalWrite(3, HIGH); // turn the LED on so we know the hardware button is working
    Serial.println(digitalRead(2)); // send a "1" to the serial monitor
    delay(250);
  } else {
    digitalWrite(3, LOW); // turn LED off while button isn't pressed
  }
}