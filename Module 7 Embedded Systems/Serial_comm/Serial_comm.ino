/* Arduino code for blinking LED for a ESP32 */


/* Select the number of the pin that you want to connect*/

/* used to declare input/output and other things */ 
void setup() {
  Serial.begin(9600); // Starts the serial communication
}

/* Whatever you write in loop will run continuously without ever stopping */
void loop() {
  Serial.println("Hi! I am printing stuff on the serial monitor");
  delay(3000);
  Serial.println("Oops! I erased it");
  delay(3000);
}
