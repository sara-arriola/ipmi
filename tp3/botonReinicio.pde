void botonReinicio () {
  fill(255);
  rect (esquinaX, esquinaY, ancho, alto);
  fill(0);
  text("REINICIO", esquinaX + ancho/2 - textWidth("REINICIO")/2, esquinaY + alto/2 + textAscent()/2);
}
