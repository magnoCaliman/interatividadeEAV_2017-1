int tamanhoRect = 15;

void setup()
{
  size(300, 200);
  background(255);
  rectMode(CENTER);
  
  frameRate(10); // aparecem todos ao mesmo tempo...
}

void draw()
{
  int i = 10;
  
  //enquanto a condição for verdadeira
  //tudo dentro das chaves é avaliado EM LOOP
  while (i <= width) 
  {                  
    rect(i, height/2, tamanhoRect, tamanhoRect);
    i = i + 20;  // qual a função dessa linha?
                 // o que acontece se for comentada?
  }
  
  println("final do draw. valor de i = " + i);
}