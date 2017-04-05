float inicioLinha_X;
float inicioLinha_Y;
float finalLinha_X = 0;
float offset = 0.5;  //incremento, step

void setup()
{
  size(600, 600);
  background(255);
  
  stroke(0, 32);
}

void draw()
{
  inicioLinha_X = random(width);
  inicioLinha_Y = random((height/10) * 7);
  line(inicioLinha_X, inicioLinha_Y, finalLinha_X, (height/10) * 8);
  
  finalLinha_X = finalLinha_X + offset;
}