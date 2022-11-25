class Boton {
  Juego juego;
  String etiqueta;
  PFont fontBoton;
  int alto, ancho, posX, posY;
  
  boolean isMouseOver() {
    if (mouseX >= posX-ancho/2 && mouseX <= posX+ancho/2 && mouseY >= posY-alto/2 && mouseY <= posY+alto/2) {
      return true;
    } else {
      return false;
    }
  }
  
  Boton (Juego juego_, String etiqueta_, PFont fontBoton_, int posX_, int posY_, int ancho_, int alto_) {
    juego = juego_;
    etiqueta = etiqueta_;
    fontBoton = fontBoton_;
    posX = posX_;
    posY = posY_;
    alto = alto_;
    ancho = ancho_;
  }
  
  void dibujar() {
    pushStyle();
    
    //boton
    if (isMouseOver()) {
      fill(0, 0, 150);
    } else {
      fill(0, 0, 255);
    }
    textFont(fontBoton, 30);
    noStroke();
    rectMode(CENTER);
    rect(posX, posY, ancho, alto, 5);
    
    pushStyle();
    
    //etiqueta
    fill(255);
    textAlign(CENTER, CENTER);
    text(etiqueta, posX, posY);
    
    popStyle();
    popStyle();
  }
  
  void pasarPantalla() {
    if (isMouseOver() && juego.pantalla == 0) {
      juego.pantalla = 1;
      juego.reiniciarVida();
      juego.reiniciarBichos();
    } else if (isMouseOver() && juego.pantalla == 2) {
      juego.pantalla = 0;
    } else if (isMouseOver () && juego.pantalla == 3) {
      juego.pantalla = 1;
      juego.reiniciarVida();
      juego.reiniciarBichos();
    }
  }
}
