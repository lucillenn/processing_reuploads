/*this sketch is composed of a few different stages stage1 = entry of the word
stage2=colorchange stage3= heart stage4= heart pulsate*/

int xPos;
int yPos;
int xpPos;
int ypPos;
int R;
int G;
int B;
boolean stage1=true;
boolean stage2=false;
boolean stage3=false;

void setup() {
  size(600,600);
  xPos = 0;
  yPos = 0;
  xpPos = width;
  ypPos = height;
  textFont(createFont("SansSerif",35));
  //colorMode(HSB,360,100,100);
  R = 0;
  G = 0;
  B = 0;
}


void draw() {
  translate(width/2,3.5*height/4);
  background(255);
  //these are just control lines
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  //this code draws the heart
  for (int i=0; i<61; i+=4) {
    float x = 0.25 * (-pow(i,2) + 40*i + 1200)*sin((PI*i)/180);
    float y = -0.25 * (-pow(i,2) + 40*i + 1200)*cos((PI*i)/180);
    //fill((x +frameCount) % 360,100,100); 
    PVector left = new PVector(x,y);
    PVector right = new PVector(-x,y);
    circle(left.x,left.y,10);
    circle(right.x,right.y,10);
  }
    //this code draws the bigger heart
    for (int i=0; i<61; i+=4) {
    float bigx = 0.3 * (-pow(i,2) + 40*i + 1200)*sin((PI*i)/180);
    float bigy = -0.3 * (-pow(i,2) + 40*i + 1200)*cos((PI*i)/180);
    PVector bigleft = new PVector(bigx,bigy);
    PVector bigright = new PVector(-bigx,bigy);
    circle(bigleft.x,bigleft.y,10);
    circle(bigright.x,bigright.y,10);
    
  }
  textSize(50);
  flying("love",1);
    fill(R,G,B);
  if (xPos == width/2){
    stage2 = true;
  }
  if (stage2 == true){
  colorchange(255,0,100);}

}

void flying(String s,int speed){
  //this undoes the translation of the heart!
  translate(-width/2,-3.5*height/4);
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
