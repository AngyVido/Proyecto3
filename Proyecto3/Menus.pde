void menu(){
  switch(menu){
    case 0:  //Inicio
    
     PFont fuente;
     fuente = loadFont("CYBERTOOTH-60.vlw");
     textFont (fuente);
     
    pushMatrix();
    image(f1,0,0);
    textSize(60);
    fill(#aa9d07);
    text("Game of Zodiac",125,290); 
    textSize(15);
    text("Presiona ENTER",250,400);
    if(key==ENTER){
      menu = 1;
    }
    popMatrix();
    break;
    
    case 1:  //Carga
    pushMatrix();
    image(f4,0,0);
    textSize(25);
    fill(255);
    text("Selecciona un personaje\npulsando la tecla con el color\nasignado a cada jugador",200,200);
    text("Cargando...",850,600);
    
    tiempo();
    if(s == 60){
     menu = 2;
    }
    popMatrix();
    break;
    
    case 2:  //Seleccion de personajes
    s = 0;
    pushMatrix();
    scale(1.4);
    image(f2,0,0);
    popMatrix();
    
    pushMatrix();
    textSize(50);
    fill(#aa9d07);
    text("Elige tu personaje",280,50);
    textSize(20);
    fill(#fff600);
    text("Jugador 1",125,120);
    fill(255);
    text("Jugador 2",790,120);
    popMatrix();
    
    pushMatrix();
    translate(75,200);
    textSize(40);
    fill(#fff600);
    text("A",0+25,0+300);
    fill(255);
    text("Q",0+75,0+300);
    scale(.18);
    image(z1,0,0);
    popMatrix();
    
    pushMatrix();
    translate(225,200);
    textSize(40);
    fill(#fff600);
    text("S",0+25,0+300);
    fill(255);
    text("W",0+75,0+300);
    scale(.3);
    image(z2,0,0);
    popMatrix();
    
    pushMatrix();
    translate(350,200);
    textSize(40);
    fill(#fff600);
    text("D",0+50,0+300);
    fill(255);
    text("E",0+100,0+300);
    scale(.25);
    image(z3,0,0);
    popMatrix();
    
    pushMatrix();
    translate(475,200);
    textSize(40);
    fill(#fff600);
    text("F",0+95,0+300);
    fill(255);
    text("R",0+150,0+300);
    scale(.18);
    image(z4,0,0);
    popMatrix();
    
    pushMatrix();
    translate(650,200);
    textSize(40);
    fill(#fff600);
    text("G",0+70,0+300);
    fill(255);
    text("T",0+115,0+300);
    scale(.20);
    image(z5,0,0);
    popMatrix();
    
    pushMatrix();
    translate(800,200);
    textSize(40);
    fill(#fff600);
    text("Y",0+50,0+300);
    fill(255);
    text("H",0+100,0+300);
    scale(.22);
    image(z6,0,0);
    popMatrix();
    
    switch(key){
      case 'a':
      j1 = true;
      se1 = 1;
      break;
      
      case 's':
      j1 = true;
      se1 = 2;
      break;
      
      case 'd':
      j1 = true;
      se1 = 3;
      break;
      
      case 'f':
      j1 = true;
      se1 = 4;
      break;
      
      case 'g':
      j1 = true;
      se1 = 5;
      break;
      
      case 'y':
      j1 = true;
      se1 = 6;
      break;
    }
    
    switch(key){
      case 'q':
      j2 = true;
      se2 = 1;
      break;
      
      case 'w':
      j2 = true;
      se2 = 2;
      break;
      
      case 'e':
      j2 = true;
      se2 = 3;
      break;
      
      case 'r':
      j2 = true;
      se2 = 4;
      break;
      
      case 't':
      j2 = true;
      se2 = 5;
      break;
      
      case 'h':
      j2 = true;
      se2 = 6;
      break;
    }
    
    if(j1&&j2){
      menu = 3;
    }
    break;
    
    case 3:  //Carga 2
    pushMatrix();
    image(f4,0,0);
    textSize(25);
    fill(255);
    text("Selecciona la pantalla de pelea\ncon la tecla indicada",200,200);
    text("Cargando...",850,600);
    tiempo();
    if(s == 45){
     menu = 4;
    }
    popMatrix();
    break;
    
    case 4:  //Seleccion de escenario
    s = 0;
    pushMatrix();
    image(f3,0,0);
    popMatrix();
    fill(255);
    textSize(50);
    text("Elige el escenario:",250,75);
    textSize(20);
    
    pushMatrix();
    translate(150,300);
    text("Presiona P",0,0);
    scale(.25);
    image(fp1,0,0+50);
    popMatrix();
    
    pushMatrix();
    translate(400,300);
    text("Presiona O",0,0);
    scale(.19);
    image(fp2,0,0+50);
    popMatrix();
    
    pushMatrix();
    translate(650,300);
    text("Presiona I",0,0);
    scale(.09);
    image(fp3,0,0+50);
    popMatrix();
    
    switch(key){
      case 'p':
      menu = 5;
      selec = 1;
      break;
      
      case 'o':
      menu = 5;
      selec = 2;
      break;
      
      case 'i':
      menu = 5;
      selec = 3;
      break;
    }
    break;
    
    case 5:  //Carga 3 e instrucciones
    pushMatrix();
    image(f4,0,0);
    textSize(20);
    fill(255);
    text("Jugador 1\nAtaque 1: z\nAtaque 2: x\nAtaque Cargado c",100,200);
    text("Jugador 2\nAtaque 1: m\nAtaque 2: n\nAtaque Cargado b",600,200);
    tiempo();
    if(s == 60){
     menu =6;
    }
    popMatrix();
    switch(se1){
      case 1:
      pushMatrix();
      translate(100,300);
      scale(.2);
      aries.display();
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      translate(100,300);
      scale(.3);
      cancer.display();
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      translate(100,300);
      scale(.25);
      cisne.display();
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      translate(100,300);
      scale(.2);
      leo.display();
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      translate(100,300);
      scale(.22);
      piscis.display();
      popMatrix();
      break;
      
      case 6:
      pushMatrix();
      translate(100,300);
      scale(.22);
      wyvern.display();
      popMatrix();
      break;
    }
    
    switch(se2){
      case 1:
      pushMatrix();
      translate(500,300);
      scale(.2);
      aries.display();
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      translate(500,300);
      scale(.3);
      cancer.display();
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      translate(500,300);
      scale(.25);
      cisne.display();
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      translate(500,300);
      scale(.2);
      leo.display();
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      translate(500,300);
      scale(.22);
      piscis.display();
      popMatrix();
      break;
      
      case 6:
      pushMatrix();
      translate(500,300);
      scale(.22);
      wyvern.display();
      popMatrix();
      break;
    }
    break;
    
    case 6:  //Pelea
    s = 0;
    escenario();
    fill(255);
     switch(se1){
       
      case 1:
      J1 = aries;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.2);
      aries.display();
      popMatrix();
      break;
      
      case 2:
      J1 = cancer;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.3);
      cancer.display();
      popMatrix();
      break;
      
      case 3:
      J1 = cisne;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.25);
      cisne.display();
      popMatrix();
      break;
      
      case 4:
      J1 = leo;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.2);
      leo.display();
      popMatrix();
      break;
      
      case 5:
      J1 = piscis;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.22);
      piscis.display();
      popMatrix();
      break;
      
      case 6:
      J1 = wyvern;
      b1();
      pushMatrix();
      translate(100,300);
      scale(.22);
      wyvern.display();
      popMatrix();
      break;
    }
    
    switch(se2){
      case 1:
      J2 = Aries;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.2);
      aries.display();
      popMatrix();
      break;
      
      case 2:
      J2 = Cancer;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.3);
      cancer.display();
      popMatrix();
      break;
      
      case 3:
      J2 = Cisne;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.25);
      cisne.display();
      popMatrix();
      break;
      
      case 4:
      J2 = Leo;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.2);
      leo.display();
      popMatrix();
      break;
      
      case 5:
      J2 = Piscis;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.22);
      piscis.display();
      popMatrix();
      break;
      
      case 6:
      J2 = Wyvern;
      b2();
      pushMatrix();
      translate(600,300);
      scale(.22);
      wyvern.display();
      popMatrix();
      break;
    }
  
  
  if(turno == 0){
  textSize(20);
  text("Jugador 1: ATACA",250,200);
  if(keyPressed){
  if(key == 'z' || key == 'Z'){
    d2 = J1.a1 - J2.de;
    J2.vi = J2.vi - d2;
    turno = 1;
    cargaJ1 = cargaJ1 + 1;
  }
  
  if(key == 'x' || key == 'X'){
    d2 = J1.a2 - J2.de;
    J2.vi = J2.vi - d2;
    turno = 1;
    cargaJ1 = cargaJ1 + 1;
  }
  
  if(cargaJ1 >= 10){
  text("Carga lista",250,250);
  if(key == 'c' || key == 'C'){
    d2 = J1.ac - J2.de;
    J2.vi = J2.vi - d2;
    turno = 1;
    cargaJ1 = 0;
  }
  }
  }
  }
  
  if(turno == 1){
  textSize(20);
  text("Jugador 2: ATACA",550,200);
  if(keyPressed){    
  if(key == 'm' || key == 'M'){
    d1 = J2.a1 - J1.de;
    J1.vi = J1.vi - d1;
    turno = 0;
    cargaJ2 = cargaJ2 + 1;
  }
  
  if(key == 'n' || key == 'N'){
    d1 = J2.a2 - J1.de;
    J1.vi = J1.vi - d1;
    turno = 0;
    cargaJ2 = cargaJ2 + 2;
  }
  
  
  if(cargaJ2 >= 10){
  text("Carga lista",550,250);
  if(key == 'b' || key == 'B'){
    d1 = J2.ac - J1.de;
    J1.vi = J1.vi - d1;
    turno = 0;
    cargaJ2 = 0;
  }
  }
  }
  }
    
    
    if(J1.vi <= 0 || J2.vi <= 0){
      menu = 7;
    }
    break;
    
    case 7:  //Carga 4
    pushMatrix();
    image(f4,0,0);
    tiempo();
    if(s == 15){
     menu = 8;
    }
    popMatrix();
    break;
    
    case 8:  //Ganador
    pushMatrix();
    image(f5,0,0);
    fill(255);
    if(J1.vi > 0){
      textSize(50);
      text("Jugador 1 Gana",250,300);
    }
    if(J2.vi > 0){
      textSize(50);
      text("Jugador 2 Gana",250,300);
    }
    textSize(15);
    fill(0,0,255);
    text("Reiniciar? Presiona l",250,350);
    text("Volver a Pelear? Presiona k",250,400);
    text("Escoger un nuevo personaje? Presiona j",250,450);
    popMatrix();
    if(key == 'l'){
      turno = 0;
      j1 = false;
      j2 = false;
      s = 0;
      menu = 0;
      selec = 0;
      se1 = 0;
      se2 = 0;
      cargaJ1 = 0;
      cargaJ2 = 0;
      aries.vi = 110;
      cancer.vi =150;
      cisne.vi = 125;
      leo.vi = 150;
      piscis.vi = 175;
      wyvern.vi = 100;
      Aries.vi = 110;
      Cancer.vi =150;
      Cisne.vi = 125;
      Leo.vi = 150;
      Piscis.vi = 175;
      Wyvern.vi = 100;
    }
    if(key == 'k'){
      turno = 0;
      s = 0;
      menu = 6;
      cargaJ1 = 0;
      cargaJ2 = 0;
      aries.vi = 110;
      cancer.vi =150;
      cisne.vi = 125;
      leo.vi = 150;
      piscis.vi = 175;
      wyvern.vi = 100;
      Aries.vi = 110;
      Cancer.vi =150;
      Cisne.vi = 125;
      Leo.vi = 150;
      Piscis.vi = 175;
      Wyvern.vi = 100;
    }
    if(key == 'j'){
      turno = 0;
      j1 = false;
      j2 = false;
      s = 0;
      menu = 2;
      cargaJ1 = 0;
      cargaJ2 = 0;
      aries.vi = 110;
      cancer.vi =150;
      cisne.vi = 125;
      leo.vi = 150;
      piscis.vi = 175;
      wyvern.vi = 100;
      Aries.vi = 110;
      Cancer.vi =150;
      Cisne.vi = 125;
      Leo.vi = 150;
      Piscis.vi = 175;
      Wyvern.vi = 100;
    }
    break;
  }
}
