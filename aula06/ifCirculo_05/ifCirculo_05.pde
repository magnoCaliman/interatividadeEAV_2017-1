int posCirculo_X = 0;
int velo = 5;
//int velo = 3; //pq para de funcionar?

void setup()
{
  size(400, 200);
  background(255);
}

void draw()
{
  background(255);

  ellipse(posCirculo_X, height/2, 20, 20);
  posCirculo_X = posCirculo_X + velo;

  if (posCirculo_X == width) // testar >=
  {
    velo = -velo;

    println("direita");
  }

  if (posCirculo_X == 0) // testar <=
  {
    velo = velo * -1;
    //velo = abs(velo);

    println("esquerda");
  }
  
  //println(velo);
}