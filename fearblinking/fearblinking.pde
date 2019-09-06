  //variables for text
  int xPos, yPos, xpPos, ypPos, speed;
  String s = "fear";
  //stages
  boolean stage2, stage3;
  //color variables
  int R=300, G=300, B=300;
  color fill = color(R,G,B);
  int greyscale=50;

  PShape sss;
  //MORE EYES
  ArrayList<Eyes> eyes = new ArrayList<Eyes>();

void setup() {
  fullScreen();
  frameRate(60);
  //size(600,600);
  background(0);
  noStroke();
  xPos = 0;
  yPos = 0;
  xpPos = width;
  ypPos = height;
  //load the eye svg
  sss= loadShape("untitled.svg");
  //MORE EYES
  
}

void draw() {
  if (stage3==false){
  background(greyscale);}
  //line(width/2,0,width/2,height);
  //line(0,height/2,width,height/2); 
  flyin(s,2);
  colorchange();
  backgroundchange();
  //Eyes eye = new Eyes(sss);
  //eye.display();
  if (frameCount % 60 == 0){
    eyes.add(new Eyes(sss));
  }
  for (int i = 0; i < eyes.size(); i++){
    eyes.get(i).display();
    eyes.get(i).blink();
    if (eyes.get(i).isDead()){
      eyes.remove(i);
    }
      
    }
}

void flyin(String s,int speed){
  PFont font;
  textAlign(CENTER, CENTER);
  font = createFont("CaviarDreams.ttf",32);
  textFont(font);
  textSize(200);
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
    stage2 = true;
  }
}
void colorchange (){
  if(stage2 == true){
  if(G>50||R>50){
  R--;
  G--;
  fill = color (R,G,B);
  fill(fill);
  text(s,width/2,height/2);}}
  if (fill == color(50,50,300)){
   stage3 = true;
   stage2 = false;
  }
}
void backgroundchange(){
 if((greyscale>0)&&(stage2 == true)){
   greyscale--;
  }
}
