const int pinoPiezo = A0;
const int pinoLed = 2;
int limite = 500;
int leituraPiezo;

bool estadoLed = LOW;

void setup() 
{
  Serial.begin(9600);

  pinMode(pinoPiezo, INPUT);
  pinMode(pinoLed, OUTPUT);

}
void loop() 
{
  leituraPiezo = analogRead(pinoPiezo);

  if(leituraPiezo >= limite)
  {
    estadoLed = !estadoLed;  //se verdadeiro, torne falso. e vice-versa.
    digitalWrite(pinoLed, estadoLed); 
  }
  
  Serial.println(leituraPiezo);  //como o piezo se comporta eletricamente?
  delay(50);

}
