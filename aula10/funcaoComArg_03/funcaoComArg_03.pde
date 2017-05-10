void setup()
{
  size(400, 600);
  background(255);
}

void draw()
{
  minhaFuncao(100, 300);
  
  minhaFuncao(200,400);
}

void minhaFuncao(int posX, int posY)
{
  fill(0);
  ellipse(posX, posY, 10, 10);
}