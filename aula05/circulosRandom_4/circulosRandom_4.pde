// declara as variáveis
// especificando o tipo, e dando nome
float r;
float g;
float b;
float a;
float diam;
float posX;
float posY;

void setup() 
{
  size(400, 400);
  background(0);
}

void draw() 
{
  ////"macete" para fazer fadeout
  //fill(0, 5);                 
  //rect(0, 0, width, height); 

// atribui um valor às variáveis
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(40);
  posX = random(width);
  posY = random(height);
  
  // usa esses valores pra desenhar a elipse
  noStroke();
  fill(r, g, b, a);
  ellipse(posX, posY, diam, diam);
}