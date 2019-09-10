class Eyes{
  int lifespan = 255*3;
  int thiccness = 0;
  float x = random(0,width);
  float y = random(0,height);
void update(){
  lifespan--;
}
void display(){
  fill(255,255,0);
  circle(x,y,20);
  circle(x+40,y,20);
}
void blink(){
  fill(0);
  if(lifespan<600&&lifespan>300&&thiccness<40){
  thiccness++;}
  if (lifespan<300&&thiccness>0){
    thiccness--;
  }
  rect(x-20,y-20,100,thiccness);
}
boolean dead(){
  if(lifespan==0){
    return true;
  }
  else{
    return false;
  }
}

}
