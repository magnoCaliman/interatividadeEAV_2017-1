void setup()
{
  size(300, 300);
  background(255);
  //rectMode(CENTER);
}

void draw()
{
  ellipse(random(300), random(300), 30, 30);
  //rect(mouseX, mouseY, 30, 30);
}