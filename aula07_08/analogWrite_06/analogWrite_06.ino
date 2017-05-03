const int pinoLed = 3; 
unsigned long brilhoLed = 0;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoLed, OUTPUT);
}

void loop()
{
  analogWrite(pinoLed, brilhoLed); // qual a diferença entre analogWrite e digitalWrite?
  brilhoLed++; // brilhoLed++ == brilhoLed = brilhoLed + 1
  
  Serial.println(brilhoLed);
  delay(5);
}
