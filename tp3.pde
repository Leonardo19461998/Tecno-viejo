//Variables globales
int Jugar = 1;
int Repinta = 1;
int Tamano = 35;
int Puntos = 0;
int PosX = 0;
int PosY = 0;


//Configurar pantalla
void setup () {
  size (800,600);
  background (0,0,0);
  cursor (HAND);
}
  
  

//Programa principal
void draw () {
  if ((Jugar ==1) && (Repinta ==1)) {
    DibujarFormas();
  }
}


//FUNCIONES
//Dibujar formas
void DibujarFormas () {
  background (0,0,0);
  
  //otroscirculos
  for (int i= 0; i<=Puntos; i++) {
    fill(floor(random(0,255)),floor(random(0,255)),floor(random(0,255)));
    ellipse(floor(random(50,750)),floor(random(100,550)),Tamano,Tamano);
  }
  
  //objeto
  PosX = floor(random(50,750));
  PosY = floor(random(100,550));
  fill(255,0,0);
  ellipse(PosX,PosY,Tamano,Tamano);
  
  //puntos
  fill(255,0,0);
  textAlign(CENTER);
  textSize(18);
  text("PUNTOS: " + (Puntos), 250, 30);
  
  //tiempo
  fill(255,0,0);
  textAlign(LEFT);
  textSize(18);
  text("TIEMPO: " + millis()/1000 , 20 , 30);
  
  //nuevapantalla
  Repinta=0;
}

//Click con el mouse
void mouseClicked() {
  if (Jugar == 1) {
    if (Repinta == 0) {
      Repinta = 1;
    }
    if ((mouseX > PosX-Tamano) && (mouseX < PosX+Tamano) && (mouseY > PosY-Tamano) && (mouseY < PosY+Tamano))
  {
    Puntos+=1;
  }
      else
      {
        Jugar=0;
        
        //GAME OVER
        fill(255,0,0);
        textAlign(RIGHT);
        textSize(18);
        text("GAME OVER; " + Puntos + " en " +millis()/1000 + " segs ", 780, 30);
      }
  }
}
