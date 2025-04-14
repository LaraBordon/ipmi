PImage carman;
void setup(){
  size(800,400);
  background(71,112,108);
  textSize(300);
  carman = loadImage("cartman.jpg");

}
void draw(){
  image(carman,0,0,400,400);
  print("X:");
  println(mouseX);
  print("Y:");
  println(mouseY); 
  strokeWeight(0);
  fill(76,127,96);
  triangle(400,10,400,800,1400,300);
  fill(58,108,79);
  triangle(400,120,800,24,400,90000);
  fill(237,237,237);
  quad(507,102,430,113,759,34,700,54);
  fill(54,68,55);
  triangle(350,220,468,220,430,135);
  triangle(424,220,488,150,530,220);
  triangle(480,220,552,138,570,220);
  triangle(530,220,600,113,680,220);
  triangle(580,220,700,150,760,220);
  fill(34,124,50);
  triangle(470,220,514,130,560,220);
  triangle(594,220,660,88,690,220);
  triangle(680,254,771,56,824,254);
  fill(178,178,178);
  quad(400,239,400,204,474,202,472,233);
  fill(226,226,226);
  ellipse(600,400,1600,355);
  fill(211,30,63);
  ellipse(600,310,380,150);
  stroke(226,226,226);
  fill(226,226,226);
  ellipse(598,380,200,40);
  fill(85,184,190);
  ellipse(600,236,329,170);
  fill(250,221,3);
  ellipse(600,249,324,130);
  fill(251,217,180);
  ellipse(600,256,320,130);
  fill(114,65,48);
  quad(433,345,762,349,747,377,449,375);
  stroke(232,54,54);
  fill(211,30,63);
  ellipse(599,341,340,40);
  fill(0,0,0);
  ellipse(525,376,164,7);
  ellipse(681,376,164,7);
  fill(250,221,3);
  ellipse(421,313,74,30);
  ellipse(778,312,74,30);
  ellipse(595,154,84,20);
  strokeWeight(2);
  stroke(0,0,0);
  fill(0,0,0);
  line(622,321,619,360);
  strokeWeight(0);
  circle(610,327,5);
  circle(614,340,5);
  circle(609,354,5);
  fill(255,255,255);
  ellipse(562,243,80,48);
  ellipse(641,243,80,48);
  fill(0,0,0);
  ellipse(576,245,7,4);
  ellipse(628,245,7,4);
  strokeWeight(1);
  line(577,295,614,300);
  image(carman,0,0,400,400);
}

  
  
