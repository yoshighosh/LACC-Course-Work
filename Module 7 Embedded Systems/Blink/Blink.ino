/* Arduino code for blinking LED for a ESP32 */


/* Select the number of the pin that you want to connect*/

#define LED 2


/* used to declare input/output and other things */ 
void setup() {
  // Set pin mode
  pinMode(LED,OUTPUT);
}

/* Whatever you write in loop will run continuously without ever stopping */
void loop() {
  delay(1000); 
  digitalWrite(LED,HIGH);
  delay(1000);
  digitalWrite(LED,LOW);
}
