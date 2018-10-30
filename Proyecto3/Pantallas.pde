void escenario(){
  switch(selec){
    case 1:
    pushMatrix();
    scale(1.7);
    image(fp1,0,0);
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(1.2);
    image(fp2,0,0);
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(0.6);
    image(fp3,0,0);
    popMatrix();
    break;
  }
}