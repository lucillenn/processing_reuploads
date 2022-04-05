
int xPos;
int yPos;
int xpPos;
int ypPos;
void setup(){
  size(200,200);
  xPos = 0;
  yPos = 0;
  xpPos = width;
  ypPos = height;
}
void draw(){
 background(200);
 textSize(50);
 flying("test",2);
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
