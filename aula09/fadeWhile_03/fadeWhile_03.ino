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
  while (brilho <= 255)  //enquanto essa condição for verdadeira
  { 
    analogWrite(pinoLed, brilho);
    brilho = brilho + i;
                                   //tudo que está dentro dessas chaves
    Serial.println(brilho);        //é avaliado em loop
    delay(30);                    
  } 

  analogWrite(pinoLed, LOW);
  brilho = 0;

  Serial.println("saiu do while");
  
}
