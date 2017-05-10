float ptX = 0;
float ptY;
float step = 2;
int i;

void setup()
{
  size(400, 400);
  background(255);

  ptY = width/2;
}

void draw()
{
  desenhaPonto(100);

  desenhaPonto(150 + random(10));
  
  //se descomentar, quebra as duas funções anteriores. pq?
  //i = 0;
  //while (i < 50)
  //{
  //desenhaPonto(200 + random(10));
  //i++;
  //}
  
  ptX = ptX + step;
}

void desenhaPonto(float ptY)
{
  point(ptX, ptY + i); //define ptY *em função de i*
}