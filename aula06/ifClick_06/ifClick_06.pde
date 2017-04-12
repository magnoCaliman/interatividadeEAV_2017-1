float tamanho;

void setup()
{
  size(800, 800);
  background(255);
  noStroke();
}

void draw()
{
  fill(255, 0, 0, 5);
  
  if (mousePressed == true)
  {
    tamanho = tamanho + 1;
    ellipse(mouseX, mouseY, tamanho, tamanho);
  }
}