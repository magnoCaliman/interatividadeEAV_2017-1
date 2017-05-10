float posX = 0;
float posY = 0;
float stepX = 2;
float stepY = 3.7;
int tamRect = 10;

void setup()
{
  size(300, 300);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  background(255);
  
  posX = posX + stepX;
  posY = posY + stepY;
  
  if (posX > width || posX < 0)
  {
    stepX = stepX * -1;
  }
  
  if (posY > height || posY < 0)
  {
    stepY = stepY * -1;
  }
  
  rect(posX, posY, tamRect, tamRect);
}