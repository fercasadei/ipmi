PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
int pantalla = 1;
int alpha = 0;
int alpha2 = 0;
int alpha3 = 0;
int alpha4 = 0;
float y = 0;
float velocidad = 0.1;
int frameCountInicio = 0;

void setup(){
  size (640, 480);
  img1 = loadImage("snk1.jpg");
  img2 = loadImage("snk2.jpg");
  img3 = loadImage("snk3.jpg");
  img4 = loadImage("snk4.jpg");
  img5 = loadImage("snk5.jpg");
  textSize(22);
}

void draw(){
  println(mouseX, mouseY);
  println(frameCount);

//pantalla 1
   if(pantalla == 1){
  image(img1, 0, 0, 640, 480);
  fill(255, alpha);
  text("shingeki no kyojin es un anime en donde la \n humanidad se encuentra atrapada entre \n unas murallas de 50 metros de alto \n por culpa de unas criaturas llamadas \n titanes, los cuales se comieron al resto \n de la población mundial.", 5, 200);
  alpha++;
  
//pantalla 2
}else if(pantalla == 2){
    image(img2, 0, 0, 640, 480);
  fill(255, alpha2);
  textSize(25);
  text("la trama gira en torno al protagonista eren yeager y \nsus dos amigos, armin arlert y mikasa ackerman.", 60, 300);
  alpha2++;
  
  //pantalla 3
  }else if(pantalla == 3){
    image(img3, 0, 0, 640, 480);
  fill(255);
  textSize(25);
  text("cuando un titán colosal de más de 50 \nmetros rompe el muro de su ciudad natal \n y provoca que una horda de titanes entren,\nuno de ellos se come a su mamá.", 20, y);
  y += velocidad + 1;
  
    //pantalla 4
  }else if(pantalla == 4){
    image(img4, 0, 0, 640, 480);
    fill(255, alpha3);
    textSize(20);
    text("jurando venganza, eren se une al cuerpo de exploración, un grupo de \nsoldados de élite que se encarga de luchar contra los titanes de las\nafueras de las murallas.", 25, 320);
    alpha3++;
    
  //pantalla 5
  }else if(pantalla == 5){
    image(img5, 0, 0, 640, 480);
      fill (255);
    stroke(0);
    rect (55, 410, 200, 30);
    fill(0);
    textSize(20);
    text("R E I N I C I O  > >", 90, 432);
    fill(0, alpha4);
    textSize(20);
    text("el anime narra el viaje de eren con \neste grupo, mientras luchan contra los \ntitanes al investigar su origen e historia.", 20, 25);
    alpha4++;
  
  }
  
  if(frameCount%(100*5) == 0){
    pantalla = pantalla + 1;
  }
}

void mouseClicked(){
  if(mouseX > 50 && mouseY > 410 && mouseX < (125 + 125) && mouseY < (50 + 410)){
    if(pantalla == 5){
       pantalla = 1;
  if(mouseX > 50 && mouseY > 410 && mouseX < (125 + 125) && mouseY < (50 + 410)){
     frameCountInicio = frameCount;
     frameCount = 0;
     alpha = 0;
     alpha2 = 0;
     alpha3 = 0;
     alpha4 = 0;
     y = 0;
    }  
     
    }
  }
}
