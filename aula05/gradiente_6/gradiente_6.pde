float posHorizontal;
int inicioY, finalY;
float offsetPosX = 1;
float offsetAlpha = 1;
float alpha = 0;

void setup()
{
  size(512, 150);
  background(255);
}

void draw()
{
  stroke(0, alpha);
  
  inicioY = 0;
  finalY = height;
  line(posHorizontal, inicioY, posHorizontal, finalY);
  
  posHorizontal = posHorizontal + offsetPosX;
  alpha = (alpha + offsetAlpha) % 256;
}