//Esta clase se encarga de cargar las imagenes, teniendo un atributo que me devuelve un valor para llamar a la imagen correspondiente.

class Pantalla {
  PImage fondo;
  String texto, navegacion;
  PFont titulo, boton;
  int pantallaAIr;
  Texto textos;

  Pantalla(PImage p_fondo, String p_texto, String p_navegacion) {
    fondo = p_fondo;
    texto = p_texto;
    navegacion = p_navegacion;
    titulo = loadFont("Roboto-Black-40.vlw");
    boton = loadFont("Alef-Bold-35.vlw");
    textos = new Texto();
  }

  void dibujar() { 
    image(fondo, 0, 0, width, height);
    fill(255);
    textFont(titulo);
    text(texto, width/2, height/10);
    fill(255, 0, 0);
    textFont(boton);
    text(navegacion, width/3+140, height-350);
  }
}
