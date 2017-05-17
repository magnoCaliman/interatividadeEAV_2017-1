void setup()
{
  size(400, 600);
  background(255);
  
  noLoop();
}

void draw()
{
  
  desenhaBola(random(width), random(height), 10, 200);
  
  desenhaBola(200, 400, 90, 30);
}

void desenhaBola(float posX, float posY, int tamanhoBola, int alpha)
{
  fill(0, 0, 0, alpha);
  ellipse(posX, posY, tamanhoBola, tamanhoBola);
}