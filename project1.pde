//this is a comment
//Vanessa Lu
//1-4
//help

float ship1 = -90;
float way = 1;
float crane1 = 0;
float up = 1;
float size = 200;
float plus = 0.5;
//--------------------------------------------------------------------------------------------------------------------------------

void setup() {
  size(1000, 700); //window size 1000px wide and 700px tall
}

void draw() {

  stroke(#F6ECAE);  //bg //#F6ECAE
  fill(#F6ECAE);
  rect(0, 0, 1000, 700);

  stroke(#FF0000);   //sun
  fill(#FF0000);
  ellipse(500, 225, size, size);
  size = size + plus;
  
  if(size >= 275) {
  plus = -0.5;
  }
  if(size <= 100) {
  plus = 0.5;
  }
  stroke(#52A5E3);   //water
  fill(#52A5E3);
  rect(550, 650, 400, 100);
  ellipse(620, 630, 230, 75);
  ellipse(725, 630, 230, 75);
  ellipse(830, 630, 230, 75);

  pushMatrix();
  translate(ship1, 0);
  ship();

  ship1 = ship1 + way;
  popMatrix();

  if (ship1 >= 90) {
    way = -1;
  }
  if (ship1 <= -90) {
    way = 1;
  }


  fill(#458BBF); //water 2
  stroke(#458BBF);
  ellipse(620, 650, 230, 75);
  ellipse(725, 650, 230, 75);
  ellipse(830, 650, 230, 75);

  fill(#3E79A5); //water 3
  stroke(#3E79A5);
  ellipse(620, 672, 230, 75);
  ellipse(725, 672, 230, 75);
  ellipse(830, 672, 230, 75);

  fill(#326389); //water 4
  stroke(#326389);
  ellipse(620, 700, 230, 75);
  ellipse(725, 700, 230, 75);
  ellipse(830, 700, 230, 75);

  stroke(0);
  fill(#7C775C);
  ellipse(0, 700, 175, 250);   //rocks
  ellipse(150, 675, 275, 150);
  ellipse(300, 685, 225, 125);
  ellipse(450, 650, 250, 200);
  ellipse(1000, 675, 275, 230);
  ellipse(255, 620, 45, 25);

  stroke(0);   //bird
  fill(#AD985E);
  triangle(390, 550, 420, 510, 450, 550);
  //quad(462,480, 420,510, 450,550, 490,521); //could have used quad ahahdhjl
  pushMatrix();
  translate(461, 481); //translates origin to this point
  rotate(radians(54)); //rotates graph 54 degrees
  rect(0, 0, 50, 50);
  popMatrix();
  pushMatrix();
  rotate(radians(54)); //rotates graph 54 degrees, then
  translate(660, -140); //translates origin to this point
  rect(0, 0, 50, 50);
  popMatrix();
  triangle(530, 492, 530, 573, 489, 522);
  triangle(460, 480, 477, 415, 540, 421);
  
  pushMatrix();
  translate(0, crane1);
  crane();
  
  crane1 = crane1 + up;
  popMatrix();
  
  if (crane1 >= 70) {
    up = -1;
  }
  if (crane1 <= 0) {
    up = 1;
  }
  
  stroke(0); //branch
  fill(0);
  quad(1000, 350, 945, 340, 940, 350, 1000, 360);
  quad(945, 340, 940, 350, 910, 340, 915, 330);
  quad(910, 340, 915, 330, 885, 318, 875, 325);
  quad(885, 318, 875, 325, 835, 298, 840, 288);
  quad(835, 298, 840, 288, 800, 273, 800, 285);
  quad(800, 273, 800, 285, 763, 280, 760, 268);
  quad(763, 280, 760, 268, 735, 270, 733, 282);
  quad(735, 270, 733, 282, 710, 285, 707, 275);
  quad(710, 285, 707, 275, 671, 272, 670, 282);
  quad(671, 272, 670, 282, 635, 275, 640, 265);
  quad(635, 275, 640, 265, 570, 245, 585, 255);
  quad(945, 340, 940, 310, 930, 300, 935, 340); //stems
  quad(885, 318, 835, 325, 845, 333, 895, 327);
  quad(785, 273, 790, 250, 780, 252, 775, 275);
  quad(763, 280, 753, 275, 740, 305, 750, 300);
  quad(640, 265, 665, 250, 675, 255, 650, 270);
  quad(635, 275, 610, 280, 605, 275, 620, 270);

  stroke(#FCD8D8);
  fill(252, 201, 201, 199); //flower 1 //#FCD8D8
  ellipse(935, 300, 28, 28);
  ellipse(955, 305, 28, 28);
  ellipse(935, 320, 28, 28);
  ellipse(915, 305, 28, 28);
  ellipse(923, 280, 28, 28);
  ellipse(948, 280, 28, 28);

  ellipse(900, 325, 28, 28); //flower 2
  ellipse(920, 330, 28, 28);
  ellipse(900, 345, 28, 28);
  ellipse(880, 330, 28, 28);
  ellipse(888, 305, 28, 28);
  ellipse(913, 305, 28, 28);

  ellipse(835, 330, 28, 28); //flower 3
  ellipse(855, 335, 28, 28);
  ellipse(835, 350, 28, 28);
  ellipse(815, 335, 28, 28);
  ellipse(823, 310, 28, 28);
  ellipse(848, 310, 28, 28);

  ellipse(820, 285, 28, 28); //flower 4
  ellipse(840, 290, 28, 28);
  ellipse(820, 305, 28, 28);
  ellipse(800, 290, 28, 28);
  ellipse(808, 265, 28, 28);
  ellipse(833, 265, 28, 28);

  ellipse(782, 252, 28, 28); //flower 5
  ellipse(802, 257, 28, 28);
  ellipse(782, 272, 28, 28);
  ellipse(762, 257, 28, 28);
  ellipse(770, 232, 28, 28);
  ellipse(795, 232, 28, 28);

  ellipse(742, 305, 28, 28); //flower 6
  ellipse(762, 310, 28, 28);
  ellipse(742, 325, 28, 28);
  ellipse(722, 310, 28, 28);
  ellipse(730, 285, 28, 28);
  ellipse(755, 285, 28, 28);

  ellipse(665, 250, 28, 28); //flower 8
  ellipse(685, 255, 28, 28);
  ellipse(665, 270, 28, 28);
  ellipse(645, 255, 28, 28);
  ellipse(653, 230, 28, 28);
  ellipse(678, 230, 28, 28);

  ellipse(700, 265, 28, 28); //flower 7
  ellipse(720, 270, 28, 28);
  ellipse(700, 285, 28, 28);
  ellipse(680, 270, 28, 28);
  ellipse(688, 245, 28, 28);
  ellipse(713, 245, 28, 28);

  ellipse(605, 280, 28, 28); //flower 9
  ellipse(625, 285, 28, 28);
  ellipse(605, 300, 28, 28);
  ellipse(585, 285, 28, 28);
  ellipse(593, 260, 28, 28);
  ellipse(618, 260, 28, 28);

  ellipse(570, 245, 28, 28); //flower 10
  ellipse(590, 250, 28, 28);
  ellipse(570, 265, 28, 28);
  ellipse(550, 250, 28, 28);
  ellipse(558, 225, 28, 28);
  ellipse(583, 225, 28, 28);

  ellipse(985, 355, 28, 28); //flower 11
  ellipse(1005, 360, 28, 28);
  ellipse(985, 375, 28, 28);
  ellipse(965, 360, 28, 28);
  ellipse(973, 335, 28, 28);
  ellipse(998, 335, 28, 28);

  stroke(0);
  fill(#3A951D);
  triangle(90, 610, 200, 610, 145, 565); //tree
  triangle(90, 610, 145, 565, 145, 525);
  triangle(200, 610, 145, 565, 145, 525);
  triangle(100, 560, 190, 560, 145, 520);
  triangle(100, 560, 145, 520, 145, 490);
  triangle(190, 560, 145, 520, 145, 490);
  triangle(110, 512, 180, 512, 145, 462);
  line(110, 512, 145, 495);
  line(180, 512, 145, 495);
  line(145, 495, 145, 462);
}

//--------------------------------------------------------------------------------------------------------------------------------

void ship() {
  stroke(0);   //ship
  fill(#795023);  
  triangle(720, 560, 775, 635, 830, 560);
  triangle(670, 635, 725, 560, 775, 635);
  triangle(615, 560, 670, 635, 725, 560);
  triangle(680, 560, 725, 500, 725, 560);
  triangle(725, 560, 725, 500, 765, 560);
}

void crane() {
  stroke(0); //crane
  fill(#E3DCCC);
  triangle(220, 35, 155, 160, 240, 140); //left wing
  triangle(25, 130, 125, 160, 140, 190); //tail
  triangle(185, 165, 205, 120, 215, 140);
  line(205, 120, 150, 123);
  line(205, 120, 205, -70);
  line(160, 123, 160, -70);
  triangle(140, 190, 110, 125, 160, 170);
  triangle(160, 170, 190, 190, 190, 125);
  quad(110, 125, 160, 170, 190, 125, 130, 30); //right wing
  quad(190, 190, 190, 155, 255, 110, 270, 110); //neck
  triangle(270, 110, 300, 130, 260, 120); //head
}
