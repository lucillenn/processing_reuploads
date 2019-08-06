int xPos;
int yPos;
int xpPos;
int ypPos;
int speed;
int R=300;
int G=300;
int B=300;
String s = "fear";
color fill = color(R,G,B);

void setup() {
  size(600,600);
  xPos = 0;
  yPos = 0;
  xpPos = width;
  ypPos = height;
}

void flyin(String s,int speed){
  textAlign(CENTER, CENTER);
  fill(fill);
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
void colorchange (){
  if(xpPos == width/2){
  if(G>30||R>30){
  R--;
  G--;
  fill = color (R,G,B);
  fill(fill);
  stroke(fill);
  text(s,width/2,height/2);}}
  
}

void draw() {
  background(50);
  textSize(32);
  //line(width/2,0,width/2,height);
  //line(0,height/2,width,height/2); 
  flyin(s,2);
  colorchange();
  
  
 
}
