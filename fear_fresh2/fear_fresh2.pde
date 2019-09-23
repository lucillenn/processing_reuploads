//issues: the eyes still go on top of the text
PFont font;
int R, G, B, greyscale=255;
int xPos=0,yPos=0,xpPos,ypPos;
boolean stage2=false,stage3=false,stage4 = false;
ArrayList<Eyes> eyes = new ArrayList<Eyes>();
//variables to store the 'borders' of the text
//int left=width/2-int(textWidth("fear")/2);
//int right=width/2+int(textWidth("fear")/2);
int left=width/2;//-358/2;
int up=height/2;//-100;
void setup(){
  fullScreen();
  frameRate(60);
  noStroke();
  //size(300,300);
  xpPos = width;
  ypPos = height;

}
void draw(){
  background(greyscale);
  fill(R,G,B);
  //rect(width/2-358/2,height/2-196/2,358,200);
  flying("fear",2);
  if (stage2){
  backgroundchange();}
  if (stage3){
  colorchange(20,100,20);}
  if (stage4){
  // adding in the eyes
    if(frameCount % 60 == 0){
      eyes.add(new Eyes());
    }
  // making them blink and disappear
  for(int i = 0; i < eyes.size(); i ++){
    Eyes eye = eyes.get(i);
    eye.update();
    eye.display();
    eye.blink(); 
    if(eye.dead()){
    eye.blink();
    eyes.remove(eye);
    }
  }
  }
  
}

void colorchange (int rt,int gt, int bt){
 if (R<rt){R++;}
 if (R>rt){R--;}
 if (G<gt){G++;}
 if (G>gt){G--;}
 if (B<bt){B++;}
 if (B>bt){B--;}
 if (rt == R){
 stage4 = true;
 }
  
}
void flying(String s,int speed){
  font = createFont("CaviarDreams.ttf",32);
  textFont(font);
  textSize(200);
  //println(textAscent());
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
void backgroundchange(){
 if((greyscale>0)){
   greyscale--;
  }
 if (greyscale == 0){
   stage2 = false;
   stage3 = true;
 }
}
