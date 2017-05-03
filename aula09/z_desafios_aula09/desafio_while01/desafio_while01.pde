int tamanhoRect = 15;
int rectPosY = 0;

void setup()
{
  size(300, 200);
  background(255);
  rectMode(CENTER);

}

void draw()
{
  background(255);
  
  float i = 10;
  while (i <= width) 
  {                  
    rect(i, rectPosY, tamanhoRect, tamanhoRect);
    i = i + 20; 
  }
  
  rectPosY++;
  
  if (rectPosY > height + tamanhoRect/2)
  {
    rectPosY = 0;
  }
  
}