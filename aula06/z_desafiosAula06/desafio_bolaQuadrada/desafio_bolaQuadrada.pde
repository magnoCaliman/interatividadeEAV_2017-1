float posX = 0;
float posY = 0;
float stepX = 4;
float stepY = 3.3;
int tamQuad = 20;

void setup()
{
  size(300, 300);
  background(255);
}

void draw()
{
  background(255);
  
  rect(posX, posY, tamQuad, tamQuad);
  
  posX = posX + stepX;
  posY = posY + stepY;
  
  if (posX > width - tamQuad || posX < 0)
  {
    stepX = stepX * -1;
    println("entrou no 1o if");
  }
  
  if (posY > height - tamQuad || posY < 0)
  {
    stepY = stepY * -1;
    println("entrou no 2o if");
  }
}