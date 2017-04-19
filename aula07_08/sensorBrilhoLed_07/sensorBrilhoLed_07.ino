const int pinoSensor = A0;
const int pinoLed = 3; // só pinos 3, 5, 6, 9, 10 e 11 conseguem
                       // simular saída analógica (PWM)                       
void setup()
{
  Serial.begin(9600);
  pinMode(pinoLed, OUTPUT);
  pinMode(pinoSensor, INPUT); //redundante
}

void loop()
{
  int leituraSensor = analogRead(pinoSensor);
//  leituraSensor = map(leituraSensor, 0, 1023, 0, 255);
  
  analogWrite(pinoLed, leituraSensor); // qual a diferença entre analogWrite e digitalWrite?
  
  Serial.println(leituraSensor);
  delay(5);
}
