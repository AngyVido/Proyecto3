int menu=0;
int turno=0;
boolean j1,j2;
int v1,v2,x1=250,x2=650;
float s=0;
int selec,se1, se2;
int cargaJ1=0, cargaJ2=0;
int d1, d2;
//Personajes
PImage z1;
PImage z2;
PImage z3;
PImage z4;
PImage z5;
PImage z6;
//Fondos de menu
PImage f1;
PImage f2;
PImage f3;
PImage f4;
PImage f5;
//Pantallas de pelea
PImage fp1;
PImage fp2;
PImage fp3;
//Constructor de personaje;
Zodiaco J1;
Zodiaco J2;

zodiaco1 aries;
zodiaco2 cancer;
zodiaco3 cisne;
zodiaco4 leo;
zodiaco5 piscis;
zodiaco6 wyvern;

zodiaco1 Aries;
zodiaco2 Cancer;
zodiaco3 Cisne;
zodiaco4 Leo;
zodiaco5 Piscis;
zodiaco6 Wyvern;

void setup(){
  size(1000,650);
  //Declaracion de las imagenes
  z1 = loadImage("aries.png");
  z2 = loadImage("cancer.png");
  z3 = loadImage("cisne.png");
  z4 = loadImage("Leo.png");
  z5 = loadImage("Piscis.png");
  z6 = loadImage("wyvern.png");
  
  f1 = loadImage("pantalla de inicio,nombre del juego.jpg");
  f2 = loadImage("pantalla de seleccion de personajes.jpeg");
  f3 = loadImage("pantalla pelea.jpg");
  f4 = loadImage("pantalla.jpg");//Pantalla de carga
  f5 = loadImage("pantalla de ganador.png");
  
  fp1 = loadImage("Castillo_de_Heinstein_6.jpg");
  fp2 = loadImage("Castillo_muros_Pallas.png");
  fp3 = loadImage("Muro_de_los_Lamentos.png");
  //Personaje vacio
  J1 = new Zodiaco();
  J2 = new Zodiaco();
  //Personajes con atributos
  aries = new zodiaco1(10,7,20,1,110);
  cancer = new zodiaco2(12,5,22,2,150);
  cisne = new zodiaco3(7,9,25,1,125);
  leo = new zodiaco4(7,5,25,2,150);
  piscis = new zodiaco5(5,7,30,1,175);
  wyvern = new zodiaco6(12,10,30,2,100);
  
  Aries = new zodiaco1(10,7,20,1,110);
  Cancer = new zodiaco2(12,5,22,2,150);
  Cisne = new zodiaco3(7,9,25,1,125);
  Leo = new zodiaco4(7,5,25,2,150);
  Piscis = new zodiaco5(5,7,30,1,175);
  Wyvern = new zodiaco6(12,10,30,2,100);

}

void draw(){
  menu();
}
