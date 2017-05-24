import oscP5.*;
import netP5.*;

OscP5 mnsgOSC = new OscP5(this, 6666);
NetAddress meuLocalRemoto = new NetAddress("127.0.0.1", 57120);

int posCirculoX, posCirculoY, tamanho;

void setup() 
{
  size(400, 400);
  frameRate(25);
  background(255);

  // "pluga" os valores vindos do SC, pelo PATH /valoresCirculo
  // na variável mnsgOSC, que envia para a função "recebeDoSC"
  mnsgOSC.plug(this, "recebeDoSC", "/valoresCirculo");
}

// função recebeDoSC, que espera receber três argumentos do tipo int
// e armazena esses inteiros nas variáveis de posição e tamanho
void recebeDoSC(int valorOSC_01, int valorOSC_02, int valorOSC_03) 
{
  posCirculoX = valorOSC_01;
  posCirculoY = valorOSC_02;
  tamanho = valorOSC_03;
  
  println(valorOSC_01 + " " + valorOSC_02 + " " + tamanho);
  //println(valorOSC_02);
  //println(tamanho);
}

void draw() 
{
  ellipse(posCirculoX, posCirculoY, tamanho, tamanho);
}

void mousePressed()
{
  background(255);
}