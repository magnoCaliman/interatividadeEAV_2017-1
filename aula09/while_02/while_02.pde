int i = 0;
float posX, posY;

void setup()
{
  size(300, 300);
  background(255);
  
  noStroke();
  frameRate(2);
}

void draw()
{
  while (i < 50)
  {
    fill(random(255), 0, 0, 128);
    ellipse(random(width), random(height), 30, 30);
    i++;
    
    println("quantas vezes isso vai ser printado?");
  }
 
  println("e isso aqui?"); 
  println(frameCount);
  
  //i = 0; //e se descomentar isso aqui? qual relação entre while e void draw()?
}