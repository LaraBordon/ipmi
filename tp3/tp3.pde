//Lara Bordon
//comisión 1
//https://youtu.be/1ag3F6IqGRU

PImage imagen14;
float movRect = 0;
boolean baja = true;
int tamCuadrado = 25;
void setup() {
  size(800, 400);
  imagen14 = loadImage("imagen14.jpg");
}
void draw() {
  //print("X:");
  //println(mouseX);
  //print("Y:");
  //println(mouseY);
  background(180, 180, 180);
  image(imagen14, 0, 0, height, width/2);
  for (int x=424; x<width; x=x+50) {
    strokeWeight(0);
    println(suma(2, 5));
    for (int y=0; y<height; y=y+50) {
      fill(0);
      cuadro(x, y, tamCuadrado, 50);
      fill(255);

      if (mouseY >y && mouseY < y+50) {
        fill(random(255), random(255), random(255));
        rect(x-movRect, y+movRect, tamCuadrado-2,tamCuadrado-2);
        if (baja) {
          movRect = movRect+0.009;
        } else {
          movRect = movRect-0.009;
        }
        if (movRect >= 25) {
          baja = false;
        }
        if (movRect < 0) {
          baja = true;
        }
      } else {
        rect(suma(x,2), y, tamCuadrado-2, tamCuadrado-2);
      }
    }
  }
}
int suma(int i, int u) {
  return i+u;
}
void cuadro(int x, int y, int u, int j) {
  rect(x, y, u, u);
  rect(x-u, y+u, u, u);
  triangle(x-u, y+u, x, y+u, x, y);
  triangle(x, y+u, x, y+j, x+u, y+u);
}
void keyPressed(){
  movRect=0;
  mouseY = 0;
}
