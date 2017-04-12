void setup()
{
  size(600, 200);
}

void draw()
{
  if(mouseX > 300)
  {
    background(255, 0, 0);
  } 
  
  if(mouseX < 300)
  {
    background(0, 255, 0);
  }
  
  println(mouseX);
}