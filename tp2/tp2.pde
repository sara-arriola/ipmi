//Sara Eugenia Arriola Castillo.
//IPMI, Comisión 2.


PImage portada, diapo1, diapo2, diapo3, diapo4; //almacena las imágenes que voy a usar
String diapositiva; // Variable global de texto
float titulo = 33; //tamaño de texto para los títulos
float cuerpo = 22; //tamaño de texto para el cuerpo
int duracion = 300; // duración de la animación en frames
int frames = 0;   // Contador de fps

int alpha = 0;  // Valor inicial de opacidad
int alpha1 = 0; // usado en diapo2
int alpha2 = 0; //usado en diapo3
int alpha3 = 0;  // usado en diapo4
float alpha0 = 255;  // para el fade out en diapo4

int r = 0;  // Valor inicial de rojo
int g = 0;    // Valor inicial de verde
int b = 0;    // Valor inicial de azul

float posX = 0;
float posY = 115;
float velocidad = 1; // Velocidad de movimiento
int direccion = 1; // Dirección del movimiento

float posX3 = 180; // Posición X inicial del texto (puedes ajustarla según sea necesario)
float posY3 = 60; // Posición Y inicial del texto
float velocidad3 = 1; // Velocidad de movimiento
int direccion3 = 1; // Dirección del movimiento


int esquinaX1 = 235;  //variables para el botón
int esquinaY1 = 200;
int ancho = 170;
int alto = 80;
color botonColor= color (255); //color incial del boton
boolean botonApretado = false; //flag para el estado del botón de reinicio

void setup() {
  size (640, 480);
  portada = loadImage("diapo0.jpg"); // Carga las imágenes que almacené en PImage
  diapo1 = loadImage("diapo1.jpg");
  diapo2 = loadImage("diapo2.jpg");
  diapo3 = loadImage("diapo3.jpg");
  diapo4 = loadImage("diapo4.jpg");
  diapositiva = "portada"; //Asigno un valor inicial a la variable para el inicio de la presentación
}

void draw() {

  //    - - - - - INICIO PRIMERA DIAPOSITIVA - - - - -

  if ( diapositiva.equals("portada") )
    image (portada, 0, 0);


  // se aumenta el valor rgb para que la animación vaya cambiando
  r = r + 1;
  if (r > 255) {
    r = 0;  // el valor de rojo pasa a 0 si es mayor a 255
  }
  g = g + 2;
  if (g > 255) {
    g = 0;
  }
  b = b + 3;
  if (b > 255) {
    b = 0;
  }
  fill(r, g, b);  // el color de relleno del texto
  textSize(titulo);
  text("¿Cuáles son las \n      reglas del GO?", 255, 70);

  strokeWeight(3);
  fill(255);
  rect(260, 368, 350, 90, 22);
  textSize(cuerpo);
  if (frames <=duracion && frames<256) {
    fill(255 - frames);
    frames++;
    text("El GO es un juego de estrategia para \ndos personas. El objetivo es controlar \nmás del 50 % del área del tablero. ", 266, 395);
  } else {
    fill (0);
    text("El GO es un juego de estrategia para \ndos personas. El objetivo es controlar \nmás del 50 % del área del tablero. ", 266, 395);
  }
  
  //    - - - - - FIN PRIMERA DIAPOSITIVA - - - - -


  //    - - - - - INICIO SEGUNDA DIAPOSITIVA - - - - -

  if ( frameCount/60 >= 7 ) // si pasaron 8 segundos desde el inicio del draw
    diapositiva = "diapo1" ;
  if ( diapositiva.equals("diapo1") ) {
    image(diapo1, 0, 0);
    alpha = alpha + 1;    // Incrementa el valor de opacidad
    if (alpha > 255)     // Limita el valor de opacidad a un máximo de 255
      alpha = 255;
    fill(0, 0, 0, alpha);  // el color con la opacidad actual
    textSize(titulo);
    text("colocación\n                de piedras", 265, 33);
    // Movimiento del texto de izquierda a derecha
    posX =posX + velocidad * direccion;

    if (posX>=31 ) {
      posX = 31; // Establece posX en el borde derecho
      velocidad = 0; //se deja de mover
    }
    fill(r, g, b);
    textSize(cuerpo);
    text(" Las piedras no se mueven  \n  una vez colocadas, pero \n   pueden ser captura- \n   das y removidas del \n    tablero.", posX, 115);
  }

  //    - - - - - FIN SEGUNDA DIAPOSITIVA - - - - -


  //    - - - - - INICIO TERCERA DIAPOSITIVA - - - - -

  if ( frameCount/60 >= 15)
    diapositiva = "diapo2";
  if ( diapositiva.equals("diapo2") ) {
    image(diapo2, 0, 0);
    alpha1 = alpha1 + 1;    // Incrementa el valor de opacidad
    if (alpha1 > 255)     // Limita el valor de opacidad a un máximo de 255
      alpha1 = 255;
    fill(0, 0, 0, alpha1);  // el color con la opacidad actual
    textSize(titulo);
    text("captura de piedras", 300, 44);

    posY3 = posY3 + velocidad3 * direccion3;

    if (posY3>=80){
    posY3 = 80;
    velocidad = 0; 
    }
    textSize(cuerpo);
    fill(r, g, b); // Establece el color del texto
    text("Un grupo de piedras es capturado cuando es \nrodeado totalmente por piedras del jugador \nrival sin que tenga ningún hueco \nlibre en su interior.", posX3, posY3);
  }

  //    - - - - - FIN TERCERA DIAPOSITIVA - - - - -


  //    - - - - - INICIO CUARTA DIAPOSITIVA - - - - -

  if ( frameCount/60 >= 23)
    diapositiva = "diapo3";
  if ( diapositiva.equals("diapo3") ) {
    image(diapo3, 0, 0);
    alpha2 = alpha2 + 1;    // Incrementa el valor de opacidad
    if (alpha2 > 255)     // Limita el valor de opacidad a un máximo de 255
      alpha2 = 255;
    fill(0, 0, 0, alpha2);  // el color con la opacidad actual
    textSize(titulo);
    text("finalización del juego", 300, 44);
    fill(0);

    textSize(cuerpo);
    fill(r, g, b);
    text("El juego termina mediante un acuerdo entre ambos\n   jugadores. Cuando alguno de ellos cree que no hay más\n                   movimientos provechosos por hacer debe pasar\n                     en lugar de colocar una piedra en el tablero. ", 90, 85);
  }
  //    - - - - - FIN CUARTA DIAPOSITIVA - - - - -



  //    - - - - - INICIO QUINTA DIAPOSITIVA - - - - -

  if ( frameCount/60 >= 30)
    diapositiva = "diapo4";
  if ( diapositiva.equals("diapo4") ) {
    image(diapo4, 0, 0);

    alpha3 = alpha3 + 1;    // Incrementa el valor de opacidad
    if (alpha3 > 255)     // Limita el valor de opacidad a un máximo de 255
      alpha3 = 255;
    fill(255, 255, 255, alpha3);  // el color con la opacidad actual
    textSize(titulo);
    text("conteo de puntos.", 366, 66);

    fill(r, g, b);
    textSize(cuerpo);
    text("Se cuenta el número de intersecciones \nvacías controladas por cada jugador, más \nlas piedras capturadas del oponente. \nEl jugador con el puntaje más alto gana.", 235, 344);
  }
  //    - - - - - FIN QUINTA DIAPOSITIVA - - - - -




  //DIBUJO BOTÓN DE REINICIO
  if ( frameCount/60 >= 40) {
    fill(0, 255, 0);
    textSize(cuerpo);
    text("Se cuenta el número de intersecciones \nvacías controladas por cada jugador, más \nlas piedras capturadas del oponente. \nEl jugador con el puntaje más alto gana.", 235, 344);
    fill(botonColor);
    if (botonApretado)
      stroke(5);
    rect (esquinaX1, esquinaY1, ancho, alto, 30);
    fill(0);
    text("REINICIO", esquinaX1 + ancho/2 - textWidth("REINICIO")/2, esquinaY1 + alto/2 + textAscent()/2);
  }
  
}// FIN DEL VOID DRAW


//cuando el ratón está sobre el botón
void mouseMoved() {
  if (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho &&
    mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    botonColor= color(178, 202, 255);
  } else {
    botonColor= color(255);
  }
}
void mouseClicked() {  //cuando se apreta el botón
  if (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho &&
    mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    botonApretado = true;
    restartPP();   //lama a función para cambiar las variables que van a reiniciar la presentación
  } else {
    botonApretado = false; // resetea el estado del botón si no se clickea adentro de él
  }
}

void restartPP() {  //  reiniciar la presentación
  frameCount =0 ;   //reiniciar frameCount
  diapositiva = "portada"; //vuelve al inicio de la presentación.
}
