float posX = 0;
float posY = 0;
float stepX = 2;
float stepY = 3.7;
int tamRect = 30;

void setup()
{
  size(300, 300);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  background(255);
  
  definePosicao();
  checaLimite();
  desenha();
}

void definePosicao()
{
  posX = posX + stepX;
  posY = posY + stepY;
}

void desenha()
{
  rect(posX, posY, tamRect, tamRect);
}

void checaLimite()
{
if (posX > width || posX < 0)
  {
    stepX = stepX * -1;
  }
  
  if (posY > height || posY < 0)
  {
    stepY = stepY * -1;
  }
}