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
