int pinoLed = 3;
int brilho = 0;
int i = 1;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoLed, OUTPUT);
}

void loop()
{
  while (brilho <= 255)
  {
    analogWrite(pinoLed, brilho);
    brilho = brilho + i;

    Serial.println(brilho);
    delay(20);
  }

  analogWrite(pinoLed, LOW);
  brilho = 0;
  
}
