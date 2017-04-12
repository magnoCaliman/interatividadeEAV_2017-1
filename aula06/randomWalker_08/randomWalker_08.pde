float dado;
float posX = 0;
float posY = 0;
float step = 1;

void setup()
{
  size(300, 300);
  background(255);
  
  //stroke(0, 128);
}

void draw()
{
  translate(width/2, height/2);
  point(posX, posY);
  
  dado = random(0, 1);

  if (dado < 0.25)
  {
    posX = posX + step;
  } else if (dado > 0.25 && dado < 0.5)
  {
    posX = posX - step;
  } else if (dado > 0.5 && dado < 0.75)
  {
    posY = posY + step;
  } else if (dado > 0.75)
  {
    posY = posY - step;
  }
  
  posX = constrain(posX, -width/6, width/6);
  posY = constrain(posY, -height/6, height/6);
}