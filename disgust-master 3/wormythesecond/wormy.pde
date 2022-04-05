class Wormy{
float mobi;
PVector position;
Wormy(PVector position, float m){
this.position=position;
mobi=m;
}

void move(){ 
PVector speed=new PVector(random(-5,5),random(-5,5));
PVector wiggle=new PVector(random(-mobi,mobi),random(-mobi,mobi));
position.add(wiggle);
position.add(speed);
fill(255);
ellipse(position.x,position.y,30,30);
}}
