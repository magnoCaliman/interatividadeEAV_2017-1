const int pinoPiezo = A0;
const int pinoLed = 2;
const int limite = 500;

bool estadoLed = LOW;

void setup() 
{
  Serial.begin(9600);

  pinMode(pinoPiezo, INPUT);
  pinMode(pinoLed, OUTPUT);

}
void loop() 
{
  int leituraPiezo = analogRead(pinoPiezo);

  if(leituraPiezo >= limite)
  {
    estadoLed = !estadoLed;
    digitalWrite(pinoLed, estadoLed); 
  }
  
  Serial.println(leituraPiezo);
  delay(50); //debouncing

}
