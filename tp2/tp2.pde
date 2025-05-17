PImage kungfusion;
PImage gordo;
PImage maestros;
PImage karate;
PImage fin;
int mivariable = 0;
int movGordo = 0;
int movMaestros = 0;
int movKarate = 0;
int movfin = 0;
float textoPosY;
float texto2PosY;
float texto3PosY;
float velocidadgordo = 1.0;
float velocidadmaestros = 1.0;
float velocidadkarate = 1.0;
int posX, posY, anchoBot, altoBot;
int posykungfu, anchokungfu, altokugfu;

void setup(){
  
  size(640,480);
  kungfusion = loadImage("kungfusion.png");
  gordo = loadImage("descarga.png");
  maestros = loadImage("descarga_1.png");
  karate = loadImage("OIP.png");
  fin = loadImage("fin.png");
  textSize(25);
  textoPosY = height + 50;
  texto2PosY = height + 50;
  texto3PosY = height + 50;
  posX=500;
  posY=400;
  anchoBot=100;
  altoBot=50;
  posykungfu=1;
  anchokungfu=300;
  altokugfu=300;
  }
  
void draw(){
  background(0);
  mivariable = mivariable+3;
  image(kungfusion,mivariable, posykungfu, anchokungfu, altokugfu);
  if((mivariable > width )&&(movGordo < 800)){
    image(gordo,0,1,width,height);
    String texto = "Sing y Bone, torpes aspirantes a gánsteres, \n intentan extorsionar al aparentemente débil casero \n del Pig Sty Alley simulando una enfermedad.  \n Sin embargo, su plan falla cuando el casero se da cuenta \n del engaño y los confronta.  \n Esta escena cómica subraya la ineptitud de los \n protagonistas y establece la premisa de que los humildes \n residentes  \n del barrio ocultan habilidades sorprendentes.";
    fill(255,18,117);
    text(texto, 20, textoPosY, width - 40); 
    textoPosY -= 1; 
    movGordo++;
  }else if((movGordo >= 10)&&(movMaestros < 800)){
    image(maestros,0,1,width,height);
    String texto2 = "La casera y el sastre del Pig Sty Alley forman un matrimonio peculiar pero formidable. \n A primera vista, parecen ser dos arrendatarios más en el \n humilde vecindario: \n ella, mandona y con un grito ensordecedor, y él, \n afeminado y dedicado a su sastrería. \n Sin embargo, bajo esta fachada se esconden dos maestros \n de kung fu de increíble habilidad, retirados del mundo de \n las artes marciales.";
    fill(255,18,117);
    text(texto2, 20, texto2PosY, width - 40); 
    texto2PosY -= 1; 
    movMaestros++;
  }else if((movMaestros >= 800)&&(movKarate < 800)){
    image(karate,0,1,width,height);
    String texto3 = "Sing, el protagonista de la película, interpretado por \n Stephen Chow. Al principio un aspirante a gángster torpe, \n Sing descubre un increíble potencial de kung fu a lo largo \n de la película. En esta escena, se le ve ejecutando un \n movimiento de artes marciales muy poderoso, lo que \n indica que ha abrazado sus habilidades, dandoles una \n lección a los miembros de la pandilla Axe.";
    fill(255,18,117);
    text(texto3, 20, texto3PosY, width - 40); 
    texto3PosY -= 1; 
    movKarate++;
  }else if(movKarate >= 800){
    image(fin, 0, 1, width, height);
    fill(0);
    text("Fin",60,60,width, height);
    movfin++;
  }
   if (mouseX>posX && mouseX<posX+anchoBot && mouseY>posY && mouseY<posY+altoBot) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
   rect(posX, posY, anchoBot, altoBot);
  }
  
  void mousePressed() {
    
  if (frameCount>240) {
    if (mouseX>posX && mouseX<posX+anchoBot && mouseY>posY && mouseY<posY+altoBot) {
      textoPosY = height + 50;
      texto2PosY = height + 50;
      texto3PosY = height + 50;
      mivariable = 0;
      movGordo = 0;
      movMaestros = 0;
      movKarate = 0;
      movfin = 0; 
    }  
  }
}
 
