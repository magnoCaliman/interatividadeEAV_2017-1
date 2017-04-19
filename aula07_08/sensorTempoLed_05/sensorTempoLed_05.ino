const int pinoSensor = A0;
const int pinoLed = 2;
int leituraSensor;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoSensor, INPUT); // redundante
  pinMode(pinoLed, OUTPUT);
}

void loop()
{
  leituraSensor = analogRead(pinoSensor);
  leituraSensor = map(leituraSensor, 0, 1023, 30, 500);

  digitalWrite(pinoLed, HIGH);
  delay(leituraSensor);
  
  digitalWrite(pinoLed, LOW);
  delay(leituraSensor);

  Serial.println(leituraSensor);
}
