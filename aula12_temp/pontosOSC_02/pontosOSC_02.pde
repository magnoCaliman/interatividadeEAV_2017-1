// importa as bibliotecas necessárias
// "ensina" ao processing funções extras
import oscP5.*;
import netP5.*;

//inicia a comunicação
//não diz respeito a O QUE vai ser enviado
//mas sim a COMO (em qual formato), e POR ONDE
OscP5 mnsgOSC = new OscP5(this, 6666); //do SC p/ o processing
NetAddress meuLocalRemoto = new NetAddress("127.0.0.1", 57120); //do processing p/ o SC

int tamCirculo = 10; 

void setup()
{
  size(400, 400);
  background(255);
  frameRate(1);
}

void draw()
{
  fill(0);
  float posX = random(width);
  float posY = random(height);
  ellipse(posX, posY, tamCirculo, tamCirculo);

  //cria uma variável do tipo OscMessage chamada minhaMsg
  //com o PATH que deve ser referenciado no SuperCollider
  OscMessage minhaMsg = new OscMessage("/posPontos"); 

  minhaMsg.add(posX); //minhaMsg[1] no SC
  minhaMsg.add(posY); //minhaMsg[2] no SC

  mnsgOSC.send(minhaMsg, meuLocalRemoto);

  println(posX);
  println(posY);
}

void mousePressed()
{
  background(255);
}