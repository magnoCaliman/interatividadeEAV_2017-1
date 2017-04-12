void setup()
{
  size(600, 200);
}

void draw()
{
  if (mouseX > 300)
  {
    background(255, 0, 0);
  } 

  else
  {
    background(128);
  }
  
  println(mouseX);
}