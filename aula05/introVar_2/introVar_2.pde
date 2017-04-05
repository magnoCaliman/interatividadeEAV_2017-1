int posicaoX = 100;
int posicaoY = 150;

void setup()
{
  size(300, 300);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  //rect(100,      150,      30, 30);
  rect(posicaoX, posicaoY, 30, 30);
}