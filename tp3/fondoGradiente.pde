void fondoGradiente(float x, float y, int colorRandom) {
  int diam= 570;        //diámetro del círculo del fondo verde
  int radio = diam / 2;
  color c1;
  color c2;
  // Define dos colores para el gradiente
  if (colorRandom==0) {
    c1 = col1;  // Verde oscuro
    c2 = col2; //Verde claro
  } else {
    c1 = color(random(255)+1, random(255)+1, random(255)+1);  //
    c2 = color(random(255)+1, random(255)+1, random(255)+1); //1
  }
  // Ajusta el tamaño del radio del color c1
  int c1Radio = radio / 2; // Radio de c1

  for (int r = radio; r > 0; --r) {
    float inter1; //se utiliza para determinar la proporción de mezcla entre c1 y c2 en cada radio r del círculo para un gradiente suave.
    if (r > c1Radio) {
      // Si estamos fuera del radio de c1, usamos la transición normal
      inter1 = map(r, c1Radio, radio, 0, 1); //controlar cómo se mezclan los colores c1 y c2 a medida que se dibuja el círculo.
    } else {
      // Dentro del radio de c1, el color es dominado por c1
      inter1 = 0; // si vale 0 es 100% c1; inter=interpolacion de los colores
    }
    color c = lerpColor(c1, c2, inter1);
    fill(c);
    ellipse(x, y, r, r);
  }
}
