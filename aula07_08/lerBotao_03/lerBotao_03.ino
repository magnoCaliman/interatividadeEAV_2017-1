int pinoBotao = 5;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoBotao, INPUT);
}


void loop() //maneira mais simples, porém menos flexível
{
  Serial.println(digitalRead(pinoBotao));
}


//
//void loop() //maneira "menos simples", porém mais flexível
//{
//  int estadoDoBotao = digitalRead(pinoBotao);
//  Serial.println(estadoDoBotao);
//}

