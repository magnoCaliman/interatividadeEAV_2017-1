int tamanhoRect = 15;
int step = 0;
int contador = 1;
int distEntreRect = 20;

void setup()
{
  size(600, 200);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  background(255);
  
  int rectPosY = height/2;
  
  float i = 10;
  while (i <= width + tamanhoRect/2) 
  {                  
    rect(i, rectPosY, tamanhoRect, tamanhoRect);
    i = (i + distEntreRect) + step; 
  }
  
  step = step + contador;
  
  if (step > width - (10 + distEntreRect + tamanhoRect/2) || step < 0)
  {
    contador = contador * -1;
  }
  
  println(step);
}