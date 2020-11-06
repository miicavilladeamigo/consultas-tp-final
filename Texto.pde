class Texto {
  PFont narracion, nombres, creditos;//variables de las fuentes.

  String textos [];
  String navegacion[];
  PFont fuentes;
  int pantallaAIr;

  int pantalla2_PosY_Inicial= 650;
  int pantalla2_PosY = pantalla2_PosY_Inicial;

  Texto() {
    //fuentes

    creditos = loadFont("FranklinGothic-Book-35.vlw");
    nombres = loadFont("FranklinGothic-Heavy-35.vlw");
    narracion = loadFont("BookmanOldStyle-27.vlw");

    textos = new String [15];
    navegacion = new String [20];


    textAlign(CENTER);

    inicializarTextosAventura();
  }
  void inicializarTextosAventura() {

    textos [0] = "Los cuentos de Beedle el Bardo\nLa fabula de los cinco hermanos\n\n\n" ;
    navegacion [0] = "Preciona la flecha izquierda para jugar\n\nPreciona la flecha derecha para los créditos";

    //Pantalla introducción.
    textos[1] = "Había una vez tres hermanos que viajaban a la hora\ndel crepúsculo por una solitaria y sinuosa carretera.\n" 
      + "Los hermanos llegaron a un río demasiado profundo\npara vadearlo" + " y demasiado peligroso para cruzarlo\na nado." +
      "Pero como los tres hombres eran muy diestros \nen las artes mágicas, no tuvieron más que agitar sus varitas\n\n\n";

    navegacion[1] = "Presiona la tecla A para Accio\n\nPreciona la tecla P para aparicion";

    //Cruce con la muerte
    textos [2] = "Hicieron aparecer un puente para salvar las traicioneras\naguas. Cuando se hallaban hacia la mitad del puente,\nuna figura encapuchada les cerró el paso.\n" +
      "Y la muerte les hablo.Estaba contrariada porque acababa de \nperder a tres posibles víctimas,ya " +
      "que normalmente los \nviajeros se ahogaban en el río. Pero ella fue muy astuta\ny, fingiendo felicitar a los tres hermanos por sus\n" +
      "poderes mágicos, les dijo que cada uno tenía opción de un \npremio por haber " +
      "sido lo bastante listo para eludirla.";
    navegacion [2] = "Presiona la tecla derecha para continuar";

    //Regalo Hermano Mayor
    textos [3] = "Así pues, el hermano mayor, que era un hombre muy \ncombativo pidió la varita mágica más poderosa que\n" +
      " existiera, una varita capaz de hacerle ganar todos \n los duelos a su propietario;en definitiva,¡una \nvarita digna" +
      " de un \nmango que había vencido a la muerte! Ésta se \nencaminó hacia un saúco "+
      "que había en la orilla del río,\nhizo una varita con una rama y se la entregó.";
    navegacion [3] = "Presiona la tecla derecha para continuar";

    //Regalo Hermano Mediano
    textos [4] =  "A continuación,el hermano mediano,que era muy arrogante\n"+
      "quiso humillar aún más a la Muerte, y pidió que le \nconcediera el poder de devolver a la vida "+
      "a los muertos.\nLa Muerte sacó una piedra de la orilla del río y se la entregó,\ndiciendole " +
      "que la piedra tendrá el poder de \nresucitar a los difuntos.";
    navegacion [4] = "Presiona la tecla derecha para continuar";


    //Regalo Hermano Menor.
    textos [5] = "Por último, la Muerte le preguntó al hermano menor que \ndeseaba. Éste era " +
      "el más humilde y también el más sensato \nde los tres, y no se fiaba un pelo." +
      "Así que le pidió algo que le \npermitiera marcharse de aquel lugar sin que ella " +
      "puediera \nseguirlo. Y la Muerte, de mala gana, le entregó su propia\ncapa invisible.";
    navegacion [5] = "Presiona la tecla derecha para continuar";

    //Retirada de la Muerte.
    textos [6] = "Entonces la muerte se apartó y dejó que los tres hermanos\n"+
      "siguieran su camino. Y así hicieron ellos, mientras \ncomentaban, maravillados,"+
      "la aventura que acababan de vivir \ny admiraban los regalos que les había dado la Muerte.\n\n¡Elige una historia!\n\n";

    navegacion[6] =   "Presiona la tecla A para la historia de Antioch \n\n\n" +
      "Presiona la tecla C para la historia de Cadmus\n\n\n" +
      "Presiona la tecla I para la historia de Ignotus";

    //HISTORIA HERMANO MAYOR
    textos [7] = "A su debido tiempo,se separaron y cada uno se dirigió hacia \nsu propio destino.\n"+
      "El hermano mayor siguió viajando algo más de una semana,\ny " +
      "al llegar a la aldea buscó a un mago con el que mantenía\nuna grave disputa.\n\nDerrota al enemigo\n¡Elige un hechizo!";
    navegacion [7] = "Presiona la tecla A para el encantamiento Avada Kedavra\n\n\n" +
      "Presiona la tecla H para el Hechizo Afixiante";

    //MUERTE DEL MAGO 
    textos [8] = "Naturalmente, armado con la Varita de Saúco, era inevitable \nque ganara el duelo que se produjo." +
      "Tras matar a su enemigo \ny dejarlo tendido en el suelo, se dirigió a una posada donde\n"+
      " se jactó por todo lo alto de la poderosa varita mágica que le \nhabía arrebatado a la Muerte,"+
      "y de lo invencible que se \nhabía vuelto gracias a ella.\n\n\n";
    navegacion [8] = "Presiona la tecla derecha para continuar";

    //MUERTE DEL HERMANO MAYOR
    textos [9] =  "Esa misma noche, otro mago se \nacercó con sigilo mientras el hermano mayor yacía,\n borracho "+
      "como una cuba, en su cama\nEl mago le robo la varita y por si acaso, le cortó el cuello.\n" +
      "Y así fue como la Muerte se llevo al hermano mayor.\nFIN\n\n\n";
    navegacion [9] = "Presiona la tecla derecha para continuar";

    //HISTORIA HERMANO MEDIANO
    textos [10] = "El hermano mediano llegó a su casa, donde vivía solo.\nUna vez allí, tomo la piedra para \nrevivir a los muertos." +
      "Y la hizo girar tres veces. Para su \nasombro y placer vio \naparecer ante él la figura" +
      " de la muchacha con quien se \nhabría casado si ella no hubiera muerto primaturamente.\n"+
      "Pero la muchacha estaba triste y distante, separada de él \npor una especie de velo. Pese a que había \n"+
      "regresado al mundo de los mortales,no pertenecía a él y por \neso sufría.\n¡Elimina a su novia!\n¡Elige un hechizo!\n\n\n";

    navegacion [10] = "Preciona la tecla E para el encantamiento\nEspecto Patronum\n\n\n" +
      "Preciona la tecla C para el encantamiento Cruciatus";

    //SUICIDIO HERMANO MEDIANO
    textos [11] =  "Al fin, el hombre enloqueció a causa de la desesperada \nnostalgia y se suicidó para poder reunirse"+
      " de una vez \npor todas con su amada.\n"+
      "Y la Muerte se llevó al hermano mediano.\n\nFIN\n\n\n";
    navegacion [11] =  "Presiona la tecla derecha para continuar";

    //DEPRESIÓN HERMANO MEDIANO.
    textos [12] = "La joven desaparecio, dejandolo solo y triste en aquella casa. \nEl dolor y la depreción lo llevaron a su primatura muerte,\n " +
      "Pues murio acausa de su tristeza, ya que nunca \nlogró superar aquella imagen\nFIN\n\n\n";
    navegacion [12] =  "Presiona la tecla derecha para continuar";

    //HISTORIA HERMANO MENOR (Y FINAL COMPLETO DE LA FABULA).
    textos [13] = "La muerte búsco al hermano menor durante años, pero \nnunca logró encontrarlo." +
      " Cuando este tuvo una edad muy \navanzada, se quito por fin la capa invisible" +
      " y se la regaló a \nsu hijo. Y entonces recibió a la Muerte como si fuera una \nvieja amiga," +
      " y se marchó con ella de buen agrado. Y así, \ncomo iguales, ambos se alejaron de la vida.\n\n\n";
    navegacion [13] =  "Presiona la tecla derecha para continuar";
  }

  void creditos() {
    textFont(creditos);
    fill(255);
    text("Escrito por \n \n \nTraducidos del \nrúnico antiguo\n\n\nAdaptado por", width/5, pantalla2_PosY_Inicial);
    textFont(nombres);
    text("J.K ROWLING\n\n\nHERMIONE \nGRANGER \n\n\n                  Villadeamigo Micaela", width/2, pantalla2_PosY_Inicial);
    fill(0, 0, 255);
    text("Preciona la flecha izquierda para volver atrás", width/2, height/2-250);
    if ( pantalla2_PosY_Inicial > width/6) {
      pantalla2_PosY_Inicial--;
    }
  }

  String acomodarTextos(int pantalla) {
    return textos [pantalla];
  }
  String navegacion(int pantalla) {
    return navegacion [pantalla];
  }

  int keyPressed() {
    if (keyCode == LEFT) {
      return pantallaAIr;
    } else if (keyCode == RIGHT) {
      return pantallaAIr;
    } else if (keyCode == 'a' || keyCode == 'A' || keyCode == 'p' || keyCode == 'P') {
      return pantallaAIr;
    } else if (keyCode == 'a' || keyCode == 'A') {
      return pantallaAIr;
    } else if (keyCode == 'c' || keyCode == 'C') {
      return pantallaAIr;
    } else if (keyCode == 'i' || keyCode == 'I') {
      return pantallaAIr;
    } else if (keyCode == 'a' || keyCode == 'h' || keyCode == 'A' || keyCode == 'H') {
      return pantallaAIr;
    } else if (keyCode == 'c' || keyCode == 'C' || keyCode == 'e' || keyCode == 'E') {
      return pantallaAIr;
    }

    return -1;
  }
}
