class AventuraGrafica {
  Pantalla pantallaActual;
  int pantalla;

  int cantidadPantallas = 15;
  PImage [] fondos  = new PImage [cantidadPantallas];

  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  Texto textos = new Texto();

  AventuraGrafica() {

    dibujarFondo();

    pantallas = new Pantalla [cantidadPantallas];

    //PANTALLA INICIAL.
    pantalla = 0;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    //INTRODUCCIÓN A LA FABULA
    pantalla = 1;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    //CREDITOS
    pantalla = 2;
    textos.creditos();

    //CRUCE CON LA MUERTE
    pantalla = 3;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 4;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 5;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 6;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 7;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 8;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 9;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 10;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 11;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 12;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 13;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));

    pantalla = 14;
    pantallas [pantalla] = new Pantalla (fondos[pantalla], textos.acomodarTextos(pantalla), textos.navegacion (pantalla));


    pantallaActual = pantallas[0];
  }
  void dibujar() {
    pantallaActual.dibujar();
  }

  void dibujarFondo() {
    for (int i=0; i<cantidadPantallas; i++) {
      fondos[i] = loadImage("imagen" + i + ".jpg");
    }
  }
  void keyPressed() {

    if (pantalla == 0) {
      if (keyCode == LEFT) {
        pantalla = 1;
      } else if (keyCode == RIGHT) {
        pantalla = 2;
      }
    }
  }
}
