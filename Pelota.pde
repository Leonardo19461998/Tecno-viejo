class Pelota {
  PVector posicion, velocidad;
  int anchoJugador, altoJugador;
  
  Pelota(int direccion) {
    anchoJugador = 20;
    altoJugador = 100;
    
    posicion = new PVector(width/2, height/2);
    velocidad = new PVector(direccion*random(4,5), random(4,5));
  }
 
  void mover() {
    posicion.add(velocidad);
  }
  
  void mostrar() {
    fill(255);
    noStroke();
    ellipse(posicion.x, posicion.y, 20,20);
  }
  
  void validarReboteJugador1(PVector posicionJugador) {
    float min = posicionJugador.y - altoJugador/2;
    
    float max = posicionJugador.y + altoJugador/2;
    if(posicion.x < anchoJugador && posicion.y > min && posicion.y < max) {
      velocidad.x *= -1;
    }
  }
  
  void validarReboteJugador2(PVector posicionJugador) {
    float min = posicionJugador.y - altoJugador/2;
    
    float max = posicionJugador.y + altoJugador/2;
    if(posicion.x > width - anchoJugador && posicion.y > min && posicion.y < max) {
      velocidad.x *= -1;
    }
  }
  
  void validarReboteParedes() {
    if(posicion.y > height) {
      velocidad.y *= -1;
    } else if(posicion.y < 0) {
      velocidad.y *= -1;
    }
  }
  
  PVector getPosicion() {
    return posicion;
  }
}
