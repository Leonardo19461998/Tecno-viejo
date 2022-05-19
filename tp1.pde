float posY,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11;
float variable=10;
float variablee=30;
int estado;
int vari=10;
PImage img;
int space = 0;

void setup() {
  size (500, 500);
  posY = 600;
  Y2 = 550;
  Y3=600;
  Y4=550;
  Y5=600;
  Y6=750;
  Y7=800;
  Y8=550;
  Y9=630;
  Y10=690;
  Y11=760;
  img = loadImage("jamesbond.jpg");
 
}



void draw() {

  if (estado==0) {
    image (img,space,space,width - space*2, height- space*2);
    fill(255);
    textAlign(CENTER);
    textSize(35);
    text("AGENTE", 400/2,posY);
    fill(255,0,0);
    textAlign(CENTER);
    textSize(35);
    text("007", 310,posY);
    posY--;
  } 
  if (estado==1) {
    background(0);
    stroke(255,0,0);
    variablee=30;
    line (10,random(10,height), width,random(0,height));
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("ALBERT R. BROCCOLI´S", 300, posY);
    fill(255,0,0);
    text("HARRY SALTZMAN",200,Y2);
    fill(255);
    textSize(20);
    text("presents",250,Y3);
    posY--;
    Y2--;
    Y3--;
  }

  if (estado==2) {

    background(0);
    stroke(255,0,0);
    variable = random(0,height);
    line(0,variable, width,variable);
    textAlign(CENTER);
    textSize(30);
    fill(255,0,0);
    text("EON PRODUCTIONS LTD.\nDANIEL CRAIG", 250, Y4);
    
    
    Y4--;
  }
  
  if (estado==3) {
  background(0);
  stroke(255,0,0);
  variablee=30;
  line (10,random(10,height), width,random(0,height));
  textAlign(CENTER);
  textSize(20);
  fill(255);
  text("as",250,Y4);
  textSize(30);
  fill(255,0,0); 
  text("IAN FLEMING´S",250,Y8);
  fill(255,0,0);
  text("JAMES BOND",250,Y9);
  fill(255,0,0);
  text("007",250,Y10);
  textSize(20);
  fill(255);
  text("in",250,Y11);
  
  Y11--;
  Y10--;
  Y9--;
  Y8--;
  Y4--;  
  }
  
  if (estado==4) {
  background(0);
  vari = vari + 2;
  fill(255,0,0);
  ellipse(250,241,vari,vari);
  textSize(50);
  fill(0);
  text("CASINO ROYALE\n007",250,250);
  
  Y4--;  
  }
  
/////////////////////////////////////
  if (posY<10 && estado==0) {
    estado=1;
    posY=width;
  }
   if (posY<10 && estado==1) {
    estado=2;
    posY=width;
  } 
  
  if (Y4< 10 && estado == 2 ){
 estado=3;
Y4=width;

}
 
  
if (Y4< 10 && estado == 3 ){
 estado=4;
Y4=width;

}


if (Y4< 10 && estado == 4 ){
 estado=5;
Y4=width;

}

  
  
  
  
}

void mousePressed(){
  
  estado=0;
  posY = 700;
  
  
}
