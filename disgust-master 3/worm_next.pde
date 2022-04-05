  //MORE WORMS
  ArrayList<Wormy> worms;
  //variables for text
  PFont font;
  int xPos=0;
  int yPos=0;
  int xpPos;
  int ypPos;
  int R=0;
  int G=0;
  int B=0;
  int alpha;
  //worm variables
  PVector p = new PVector(467,498);
  PVector p2 = new PVector(720,498);
  /*Wormy worm = new Wormy(p);
  Wormy worm2 = new Wormy(p2);*/
  //stages
  boolean stage2;
  boolean stage3;
void setup(){
 fullScreen();
 worms = new ArrayList<Wormy>();
 xpPos = width;
 ypPos = height;
 smooth();
 stroke(0);
 


}
void draw(){
  background(200);
  textSize(50);
  fill(R,G,B);
  flying("disgust",2);
  colorchange(50,180,50);
  holes();
  if (stage3 == true){
    //worm.move(); 
    //worm2.move();
    worms.add(new Wormy(p));
    worms.add(new Wormy(p2));
    for (int i = 0; i < worms.size(); i++){
      worms.get(i).move();
    }
  }
   
}
void flying(String s,int speed){
  font = createFont("CaviarDreams.ttf",32);
textFont(font);
   textSize(200);
  textAlign(CENTER, CENTER);
  text(s,width/2,yPos);
  text(s,xPos,height/2);
  text(s,width/2,ypPos);
  text(s,xpPos,height/2);
  xPos= xPos+speed;
  yPos = yPos+speed;
  xpPos = xpPos-speed;
  ypPos = ypPos-speed;
  if ( xPos > width/2){xPos = width/2;}
  if (yPos > height/2){yPos = height/2;}
  if (ypPos < height/2){ypPos = height/2;}
  if (xpPos < width/2){xpPos = width/2;}
  if (xPos == width/2){stage2 = true;}
}

void colorchange (int rt,int gt, int bt){
 if (R<rt){R++;}
 if (R>rt){R--;}
 if (G<gt){G++;}
 if (G>gt){G--;}
 if (B<bt){B++;}
 if (B>bt){B--;}
  
}
void holes(){

 fill(30,alpha);
 noStroke();
 ellipse(467,height/2+48,90,90);
 ellipse(720,height/2+48,90,90);
 if (stage2==true){
   alpha+=2;
 }
 if (alpha>255){
   stage3=true;
 }
  
}
class Wormy{
  //color variation
  float a = 0.0;
  // object trail with array
  int numShapes = 100;
  int currentShape = 0;                   // counter
  float[] shapeX = new float[numShapes];  // x coordinates
  float[] shapeY = new float[numShapes];  // y coordinates
  float[] shapeA = new float[numShapes];  // alpha values
  int shapeSize = 40;
  //move variables
  float mobi=0;
  PVector position;
  PVector speed;
  //ArrayList<PVector>positions=new ArrayList<PVector>();
  
//CONSTRUCTOR
Wormy(PVector position){
this.position=position;
}

void move(){ 
  a +=0.01;
 //move ellipse
  mobi+=1;
  speed = PVector.random2D().mult(6);
  //PVector speed=new PVector(random(-5,0),random(0,5));
  PVector wiggle=new PVector(noise(mobi)*int(random(-1,1)),noise(mobi)*int(random(-1,1)));
  position.add(wiggle);
  position.add(speed);
 println(speed);
//check newest position against others (obsolete)
/*for (int i = 0; i < positions.size(); i++) {
 if(positions.get(i)==position){
  position.add(position.mult(-0.5));
  }
}*/

 //trail
  shapeX[currentShape] = position.x;
  shapeY[currentShape] = position.y;
  shapeA[currentShape] = 255;

  for (int i=0; i<numShapes ; i++) {
    //stroke(0, shapeA[i]);
    fill(sin(a)*100,sin(a)*100,sin(a)*100, shapeA[i]);
    ellipse(shapeX[i], shapeY[i], shapeSize, shapeSize);
    shapeA[i] -= 255/numShapes;
  }

  // increment counter
  currentShape++;
  currentShape %= numShapes;  // rollover counter to 0 when up to numShapes
//record position of ellipse in arraylist (obsolete)
/*positions.add(position);
println(positions);*/
}}
