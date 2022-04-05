int startx=0;
int starty=300;
float mobi=10;
PVector speed=new PVector(random(0,5),random(-5,5));
PVector position=new PVector(startx,starty);
void setup(){
  size(600,600);
 background(0);
  noStroke();

}

void draw(){
PVector wiggle=new PVector(random(-mobi,mobi),random(-mobi,mobi));
 position.add(wiggle);
  position.add(speed);
   fill(255,0,255);
  ellipse(position.x,position.y,30,30);
   fill(0,10);
  rect(0,0,width,height);
  
}
