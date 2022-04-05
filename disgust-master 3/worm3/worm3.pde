PVector p=new PVector(300,300);
Wormy worm=new Wormy(p,10);


void setup(){
 size(600,600);
 background(0);
 noStroke();
}

void draw(){

  fill(0,10);
  rect(0,0,width,height);
  worm.move();

}
class Wormy{

float mobi;
PVector position;
ArrayList<PVector>positions=new ArrayList<PVector>();
Wormy(PVector position, float m){
this.position=position;
mobi=m;
}

void move(){ 
 //move ellipse
 mobi+=0.1;
PVector speed=new PVector(random(-5,5),random(-5,5));
PVector wiggle=new PVector(noise(mobi)*2,noise(mobi)*2);
position.add(wiggle);
position.add(speed);
fill(255);


//check newest position against others
for (int i = 0; i < positions.size(); i++) {
 if(positions.get(i)==position){
  position.add(position.mult(-0.5));
  }
}
ellipse(position.x,position.y,30,30);
//record position of ellipse in arraylist
positions.add(position);
println(positions);
}}
