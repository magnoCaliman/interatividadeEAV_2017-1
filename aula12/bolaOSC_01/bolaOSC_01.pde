// importa as bibliotecas necessárias
// "ensina" ao processing funções extras
import oscP5.*;
import netP5.*;

//inicia a comunicação
//não diz respeito a O QUE vai ser enviado
//mas sim a COMO (em qual formato), e POR ONDE
OscP5 mnsgOsc = new OscP5(this, 6666);
NetAddress meuLocalRemoto = new NetAddress("127.0.0.1", 57120);

int posCirculo_X = 0;
int velo = 5;

void setup()
{
  size(400, 200);
  background(255);
}

void draw()
{
  background(255);

  ellipse(posCirculo_X, height/2, 20, 20);
  posCirculo_X = posCirculo_X + velo;

  if (posCirculo_X >= width)
  {
    velo = -velo;

    //cria uma variável do tipo OscMessage chamada minhaMsg
    //com o PATH que deve ser referenciado no SuperCollider
    OscMessage minhaMnsg = new OscMessage("/bordaEsq");
    mnsgOsc.send(minhaMnsg, meuLocalRemoto);

    println("enviou");
  }

  if (posCirculo_X <= 0)
  {
    velo = velo * -1;
  }
}