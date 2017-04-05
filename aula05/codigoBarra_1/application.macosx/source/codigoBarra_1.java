import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class codigoBarra_1 extends PApplet {

float posicaoAleatoria;

public void setup()
{
  
  background(255);
  frameRate(5);
}

public void draw()
{
  posicaoAleatoria = random(width);
  println(posicaoAleatoria);
  line(posicaoAleatoria, 0, posicaoAleatoria, height);
}

public void keyPressed()
{
  background(255);
}
  public void settings() {  size(800, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "codigoBarra_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
