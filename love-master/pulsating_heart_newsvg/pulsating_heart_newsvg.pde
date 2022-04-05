float a = 0.0;
float s = 0.0;
int xPos;
int yPos;
int xpPos;
int ypPos;
int R;
int G;
int B;
PShape heart;
boolean stage2 = false;
void setup() {
  size(700, 700);
  //noStroke();
  xPos=0;
  yPos=0;
  xpPos=width;
  ypPos=height;
  heart = loadShape("heartoutline2.svg");
  textAlign(CENTER,CENTER);
  textSize(50);
  frameRate(60);
 
  
  
}

void draw() {
  background(255);
  a = a + 0.04;
  s = abs(cos(a)*10);
  heart.disableStyle();
  noStroke();
  fill(R,G,B);
  
  //stage2
  if (xPos == width/2){
   stage2 = true; 
  }
  
  
  if (stage2 == true){
  colorchange(255,0,100);
  pushMatrix();
  translate(width/2, height/2);
  scale(s); 
  textAlign(CENTER,CENTER);
  shapeMode(CENTER);
  shape(heart,0,0);
  /*ellipseMode(CENTER);
  ellipse(0,0,10,10);*/
  popMatrix();
}
 //stage1
  flying("LOVE",2);
  
}

void flying(String s,int speed){
  textAlign(CENTER, CENTER);
  text(s,width/2,yPos);
  text(s,xPos,height/2);
  text(s,width/2,ypPos);
  text(s,xpPos,height/2);
  xPos= xPos+speed;
  yPos = yPos+speed;
  xpPos = xpPos-speed;
  ypPos = ypPos-speed;
  if ( xPos > width/2){
    xPos = width/2;}
  if (yPos > height/2){
    yPos = height/2;}
  if (ypPos < height/2){
    ypPos = height/2;}
  if (xpPos < width/2){
    xpPos = width/2;
  }
}
void colorchange (int rt,int gt, int bt){
 if (R<rt){R++;}
 if (R>rt){R--;}
 if (G<gt){G++;}
 if (G>gt){G--;}
 if (B<bt){B++;}
 if (B>bt){B--;}
  
}
