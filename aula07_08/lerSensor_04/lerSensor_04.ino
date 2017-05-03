int pinoPot = A0; // qual a diferença do pino analógico para o digital?

void setup()
{
  Serial.begin(9600);
  pinMode(pinoPot, INPUT); // pinos analógicos são definidos como INPUT automaticamente
}                          // então essa linha é redundante
                         

void loop()
{
  int valorSensor = analogRead(pinoPot);
  Serial.println(valorSensor);
  
//  float valorSensor_volts = valorSensor * (5.0 / 1024.0);
//  Serial.println(valorSensor_volts);

  delay(20);
}
