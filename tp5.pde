//Alumno: Leonardo Caballero
//Legajo: 91520/2
//Comisión 3
//Prof: David Bedoian


Juego juego;

void setup(){
  size (800,600);
  juego = new Juego();
}

void draw(){
  fill(255);
  juego.dibujar();
}

void mouseReleased(){
  juego.botonIniciar.pasarPantalla();
}
