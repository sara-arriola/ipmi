void FondoGrilla() {

  // Espaciado entre celdas
  int espaciado =25;
  int espaciado2=20;
  int Kolor1=0; // negro
  int Kolor2=255; // blanco

  // Recorrer filas
  for (int i = 0; i < 23; i++) {
    // Recorrer columnas
    for (int j = 0; j < 23; j++) {
      // Posición x e y de la curva bezier
      float posX = calculaPosX(j, espaciado);
      float posY = i * espaciado+4;
      // funcion que dibuja la curva
      dibujarCurvaBezier(posX+400, posY-(i*8), Kolor1);
      // funcion que dibuja la curva
      dibujarCurvaBezier2(calculaPosX2 (espaciado2, j), calculaPosY2(espaciado2, i ), Kolor2);
      if (Kolor1 == 0) {
        Kolor1=255;
        Kolor2=0;
      } else {
        Kolor1=0;
        Kolor2=255;
      }
    }
  }
}

// Función para calculo de coordenada y
float  calculaPosY2(int espaciado2, int i) {
  return (espaciado2)+(i*25)-(i*8);
}
// Función para calculo de coordenada X
float  calculaPosX(int j, int espaciado) {
  return  j * espaciado+4-(j*8);
}
// Función para calculo de coordenada X
float  calculaPosX2 (  int espaciado2, int j) {
  return  (espaciado2)+( 25*j)-(j*8)+400;
}


// Función para dibujar la curva bezier en una posición específica
void dibujarCurvaBezier(float posX, float posY, int Kolor) {
  float n;
  n=2/0.8;
  // Color negro
  fill(Kolor);
  // Iniciar forma
  beginShape();
  curveVertex(40/n+posX, 24/n+posY);
  curveVertex(40/n+posX, 24/n+posY);

  curveVertex(35.5/n+posX, 35.5/n+posY);
  curveVertex(24/n+posX, 40/n+posY);

  curveVertex(40/n+posX, 40/n+posY);
  curveVertex(40/n+posX, 40/n+posY);
  // Finalizar forma
  endShape();
}

void dibujarCurvaBezier2(float desplazamientoX, float desplazamientoY, int Kolor) {
  float n;
  n=2.5/0.8;
  // Color blanco
  fill(Kolor);
  beginShape();
  // Dibujar curva bezier con desplazamiento
  curveVertex(0 + desplazamientoX, (16/n) + desplazamientoY);
  curveVertex(0 + desplazamientoX, (16/n) + desplazamientoY);

  curveVertex((4.5/n) + desplazamientoX, (4.5/n) + desplazamientoY);
  curveVertex((16/n) + desplazamientoX, 0 + desplazamientoY);

  curveVertex(0 + desplazamientoX, 0 + desplazamientoY);
  curveVertex(0 + desplazamientoX, 0 + desplazamientoY);
  endShape();
}
