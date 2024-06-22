void circuloGradiente(float x, float y) {
  color c; // relleno círculo violeta-rojo
  float r;
  int diamCirculo = 240; //diámetro del círculo del fondo rojo
  int radioCirculo = diamCirculo/2;

  // 2 colores para el gradiente
  color c1 = color(255, 0, 0); // Rojo
  color c2 = color(158, 96, 169); // Violeta

  for (r = radioCirculo; r > 0; --r) {
    float inter2 = map(r, 0, radioCirculo, 0, 1);
    c = lerpColor(c1, c2, inter2);
    fill(c);
    ellipse(x, y, r, r);
  }

}
