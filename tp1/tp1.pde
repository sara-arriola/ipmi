//almacena la imagen.
PImage Paisaje;

void setup()
{
  size (800,400);
  background(187, 215, 236);
  //carga la imagen.
  Paisaje = loadImage ("landscape.jpg");
}


void draw()
{
 //muestra imagen en pantalla.
  image (Paisaje,0,0);
  
  /*rastrea e imprime coordenadas para ayudarme a la hora de copiar la imagen.
  println (mouseX +"," + mouseY);
  */
  

  //  dibujo del cielo. 
  
  noStroke();
  fill(205,225,245);
  rect(400,0,400,30);
  fill(200,225,245);   
  rect(400,30,400,80);
  fill (195,225,245);
  rect(400,80,400,70);
  
  
  //  dibujo del océano.
  fill(144,175,195);
  noStroke();
  rect(400,202,400,100);
  
  //  dibujo de nubes.
  fill(234,240,244,150);
  noStroke();
  rect(400,144,400,62);   

  //  dibujo del piso de la orilla.
  fill(120,113,100);
  noStroke();
  rect(400,282,400,30);
  
  //dibujo del piso de la calle.
  fill(68,67,63);
  noStroke();
  rect(400,305,400,100); 
  
  //  dibujos de líneas de peatón.
  
  fill(230,230,227,220);
  rect(400,375,400,16);
  rect(400,352,400,11);
  rect(400,335,400,8);
  rect(400,323,400,7);
  rect(400,311,400,5);
  fill(68,67,63);
  noStroke();
  triangle(400,311,400,345,450,311);
  triangle(800,311,800,360,735,311);
  stroke(230,230,227,220);
  strokeWeight(2);
  line(400,308,453,308);
  line(800,309,745,309);
    
  
  //  INICIO  dibujo de la reja del centro.
  
  stroke(65,57,52);
  strokeWeight(4);
  line (400,222,800,222);
  line(400,275,800,275);
  line (410,222,410,282);
  line (515,222,515,282);
  line (620,222,620,282);
  line(720,222,720,282);
  strokeWeight(1);
  line(420,222,420,275);
  line(430,222,430,275);
  line(440,222,440,275);
  line(450,222,450,275);
  line(460,222,460,275);
  line(470,222,470,275);
  line(480,222,480,275);
  line(490,222,490,275);
  line(500,222,500,275);  
  line(525,222,525,275);
  line(535,222,535,275);
  line(545,222,545,275);
  line(555,222,555,275);
  line(565,222,565,275);
  line(575,222,575,275);
  line(585,222,585,275);
  line(595,222,595,275);
  line(600,222,600,275);
  line(610,222,610,275);
  line(625,222,625,275);
  line(635,222,635,275);
  line(640,222,640,275);
  line(650,222,650,275);
  line(660,222,660,275);
  line(665,222,665,275);
  line(675,222,675,275);
  line(690,222,690,275);
  line(695,222,695,275);
  line(702,222,702,275);
  line(710,222,710,275);
  line(730,222,730,275);
  line(735,222,735,275);
  line(745,222,745,275);
  line(750,222,750,275);
  line(760,222,760,275);
  line(765,222,765,275);
  
  //  FIN  dibujo de la reja del centro.
  
  
  //dibujo de los palos a los costados. 
  stroke(60,61,58);
  strokeWeight(5);
  line(455,245,455,285);
  line(725,245,725,285);

  //  INICIO  dibujo del poste.
  
  stroke(44,55,59);
  strokeWeight(17);
  line(780,0,780,295);
  strokeWeight(9);
  line (730,70,780,70);
  line (730,130,780,130);
  strokeWeight(12);
  line (754,84,754,116);
  strokeWeight(2);
  line(750,75,750,125);
  line(758,75,758,125);
  strokeWeight(8);
  line(730,74,730,130);
  noStroke();
  fill(54,55,59);
  rect(720,80,22,40);
  rect(785,190,20,50);
  fill(195,70,66);
  rect(724,84,14,11);
  fill(240,100);
  noStroke();
  rect(729,85,4,8);  
  
  //  FIN  dibujo del poste.
 

  // dibujo de las rejas en las esquinas.
  stroke(55,54,60);
  strokeWeight(3);
  line(400,245,444,250);
  line(400,290,444,295);
  line(736,255,773,251);
  line(736,297,773,293);
  strokeWeight(5);
  line (444,250,444,300);
  line(736,250,736,300);
  strokeWeight(2);
  line(402,245,402,290);
  line(407,246,407,292);
  line(413,248,413,293);
  line(422,250,422,293);
  line(432,252,432,293);
  line (748,254,748,295);
  line(757,254,757,295);
  line(766,254,766,295);
  

  //  sombras del poste.
  stroke (25,26,23,170);
  strokeWeight(13);
  line (801,335, 714,401);
  line (735,315, 550,401);
  noStroke();
  fill(25,26,23,170);
  quad( 785, 312,766, 322, 734, 320, 734, 312);
  quad(645,340,632,340,590,353,610,353);
  quad(617,342,603,335,545,355,572,358);
}
