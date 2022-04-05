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
boolean stage2;
void setup() {
  size(1000, 1000);
  //noStroke();
  textAlign(CENTER,CENTER);
  textSize(50);
  frameRate(60);
  xPos=0;
  yPos=0;
  xpPos=width;
  ypPos=height;
  heart = loadShape("heart_outline.svg");
  
}

void draw() {
  background(255);
  fill(R,G,B);
  /*line(0,height/2,width,height/2);
  line(width/2,height,width/2,0);*/
  a = a + 0.04;
  s = abs(cos(a)*2);
  
  
  pushMatrix();
  translate(width/2, height/2);
  scale(s); 
  textAlign(CENTER,CENTER);
 
  shapeMode(CENTER);
  shape(heart,0,0);
  /*ellipseMode(CENTER);
  ellipse(0,0,10,10);*/
  popMatrix();
 
  flying("LOVE",2);
  colorchange(255,0,100);
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
