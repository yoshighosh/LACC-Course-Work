
const int ProxSensor=2; //Declaring where the Out pin from the sensor is wired

void setup() {  
  // You need to define something here              
  pinMode(ProxSensor,INPUT); // then we have the out pin from the module
}

void loop() {
  
  if(digitalRead(ProxSensor) == HIGH)      //Check the sensor output if it's high
             {
               //Print "All clear" on the serial monitor
             }
  else
            {
              // Print "Obstacle Detected" on the serial monitor
             }
  delay(100);             

}
