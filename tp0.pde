/*
Alumno: Leonardo Caballero
 Comision: 3
 Profesor: David Bedoian
 TP#0 Retrato
 Legajo: 91520/2
 */
 
 PImage messi;

void setup() {
  size(800, 400);
  messi = loadImage("messi.jpg");
}

void draw() {
  background(70, 240, 238);
  image(messi, 400,0,400,500);
  println(mouseX, mouseY);
  fill(255, 214, 187);
  stroke(255, 214, 187);
  ellipse(200, 200, 250, 350);
  stroke(0);
  strokeWeight(2);
  line(400, 0, 400, 400);
  stroke(0);
  fill(0);
  ellipse(148, 273, 30, 10);
  ellipse(152, 280, 30, 24);
  ellipse(245, 283, 30, 18);
  ellipse(249, 273, 33, 13);
  fill(0);
  stroke(0);
  ellipse(200, 287, 118, 11);
  stroke(242, 115, 134);
  fill(242, 115, 134);
  arc(200, 292, 118, 20, TWO_PI, TWO_PI+PI, CHORD);
  stroke(255);
  fill(255);
  ellipse(200, 275, 118, 13);
  stroke(0);
  line(153, 270, 157, 282);
  line(171, 268, 171, 283);
  line(193, 269, 194, 283);
  line(215, 269, 214, 285);
  line(239, 268, 235, 284);
  stroke(242, 115, 134);
  strokeWeight(3);
  line(132, 268, 266, 266);
  stroke(242, 115, 134);
  fill(242, 115, 134);
  line(267, 266, 258, 291);
  stroke(242, 115, 134);
  fill(242, 115, 134);
  line(131, 269, 142, 293);
  fill(0);
  stroke(0);
  circle(180, 203, 15);
  circle(216, 203, 15);
  line(193, 220, 202, 220);
  line(193, 220, 184, 197);
  line(202, 220, 209, 200);
  fill(255);
  ellipse(155, 111, 37, 20);
  ellipse(235, 111, 37, 20);
  fill(0);
  ellipse(235, 111, 20, 20);
  ellipse(155, 111, 20, 20);
  fill(255);
  stroke(255);
  ellipse(150, 107, 1, 1);
  strokeWeight(4);
  stroke(121, 80, 48);
  fill(121, 80, 48);
  ellipse(193, 38, 110, 23);
  fill(121, 80, 48);
  line(171, 43, 134, 39);
  line(176, 43, 131, 47);
  line(181, 44, 140, 30);
  line(188, 46, 145, 17);
  line(194, 44, 150, 15);
  line(236, 50, 119, 51);
  line(244, 49, 235, 24);
  line(248, 52, 245, 19);
  line(241, 51, 223, 21);
  line(242, 51, 215, 20);
  line(252, 52, 240, 12);
  line(202, 43, 182, 11);
  line(204, 48, 188, 17);
  line(224, 41, 180, 19);
  line(212, 51, 179, 17);
  line(143, 49, 125, 67);
  line(257, 52, 207, 38);
  line(188, 35, 167, 17);
  line(197, 47, 133, 30);
  line(173, 48, 114, 43);
  line(217, 46, 162, 17);
  line(193, 38, 127, 34);
  line(229, 50, 200, 12);
  line(262, 52, 224, 11);
  line(233, 49, 207, 13);
  line(222, 51, 196, 15);
  line(183, 50, 142, 23);
  line(200, 47, 171, 13);
  line(256, 51, 234, 14);
  line(211, 46, 187, 56);
  line(241, 48, 226, 18);
  line(264, 51, 249, 24);
  line(269, 53, 246, 26);
  ellipse(199, 315, 40, 20);
  ellipse(196, 246, 140, 25);
  stroke(242, 115, 134);
  fill(242, 115, 134);
  ellipse(270,185,50,70);
  ellipse(125,185,50,70);
  stroke(0);
  fill(0);
  strokeWeight(1);
  line(185,188,181,118);
  line(208,188,210,118);
}
