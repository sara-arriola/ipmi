//Sara Eugenia Arriola Castillo.
//IPMI, Comisión 2.
//Video YouTube: https://youtu.be/5RHwffX9BQA

PImage Foto;     //imagen a copiar.
color col1 = color(67, 177, 44);   // Verde oscuro  // colores para el fondo y keyPressed.
color col2 = color(151, 204, 54); //Verde claro   // colores para el fondo y keyPressed.
int colorRandom;

int  xAnt = 0  ;
int  yAnt = 0 ;
boolean primerCirculoDibujado = false; // es un flag

float esquinaX= 690;
float esquinaY = 10;
float ancho = 100;
float alto = 35;
boolean botonApretado = false; //flag para el estado del botón de reinicio

void setup () {
  size (800, 400);
  Foto = loadImage ("OpArt.jpg");
  noStroke();
  ellipseMode(RADIUS);
  fondoGradiente(600, 200, colorRandom);
  circuloGradiente(600, 200);
  FondoGrilla();
  strokeWeight(20);
}


void draw () {
  image(Foto, 0, 0, width/2, height);
}


void mousePressed() {  // evento: presionar mouse
  int  x = mouseX;
  int  y  = mouseY;
  float distancia;
  if (x>400) {
    if (primerCirculoDibujado) {
      distancia =  dist(xAnt, yAnt, x, y) ;
    } else {
      distancia=51;
    }
    if ( distancia <50 ) {
      fill (0, 0, 0); // negro
      primerCirculoDibujado = false;
      xAnt = 0;
      yAnt = 0;
    } else {
      fill (128+random(127), 50, 100+random(50));
      xAnt = x;
      yAnt = y;
      primerCirculoDibujado = true;
    }
    //primerCirculoDibujado = ! primerCirculoDibujado;
    ellipse(x, y, 10, 10); // Tamaño de la elipse
    botonReinicio ();
  }
}


void keyPressed() {  // evento: presionar tecla
  col1=color(random(255), random(255), random(255));
  col2=color(random(255), random(255), random(255));
  fondoGradiente(600, 200, 0);
  circuloGradiente(600, 200);
  FondoGrilla();
  botonReinicio ();
}


void mouseClicked() {  //cuando se apreta el botón
  if (mouseX > esquinaX && mouseX < esquinaX + ancho &&
    mouseY > esquinaY && mouseY < esquinaY + alto) {
    botonApretado = true;
    restart();   //lama a función para reiniciar la obra
  }
}


void restart() {  //  reinicia la pantalla
  col1 = color(67, 177, 44);
  col2 = color(151, 204, 54);
  setup();
}
