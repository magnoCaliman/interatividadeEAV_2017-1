float tamanho = 0;

void setup()
{
  size(800, 800);
  background(255);
  noStroke();
}

void draw()
{
  if (mousePressed && mouseButton == LEFT)
  {
    tamanho++;  // tamanho = tamanho + 1;
    fill(255, 0, 0, 5);
    ellipse(mouseX, mouseY, tamanho, tamanho);
  }
  
  if (mousePressed && mouseButton == RIGHT)
  {
    background(255);
    tamanho = 1;
  }
}