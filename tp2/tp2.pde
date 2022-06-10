int cant= 15;
int i=0;

void setup(){
  size(600,600);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
}

void draw(){
  background (random(0.30),random(0.30),random(0,30));
  blendMode(DIFFERENCE);
  for(int i = 0 ; i<cant; i++){
    int alto = height/cant/2;
    rotate(map(mouseX,0,width,PI/2,PI/1000));
    rect(width/2, height/2, width/2, i*alto);
    ellipse(width/2, height/2, i*alto, i*alto);
  }
if (keyPressed) { 
    if (key == 'r' || key == 'R');
    mouseX=0;
  }
}
