float posX = 0;
float mod_posX = 1;

void setup()
{
  size(600, 300);
  background(255);
}

void draw()
{
  //float posX = 0; //pq não funciona se declarar e atribuir o valor dentro do draw()?
  
  background(255);

  ellipse(posX, height/2, 30, 30);
  posX = posX + mod_posX;
  
  //ellipse(posX, height/2 + random(1, 10), 30, 30);
  //posX = posX + (1 + random(1, 3));
  
  // //"macete" para resetar a animação
  //posX = (posX + mod_posX) % width; // https://processing.org/reference/modulo.html
}