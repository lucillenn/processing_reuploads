class Eyes{
  int lifespan = 255*3;
  int thickness = 0;
  float x = random(0,width);
  float y = random(0,height);
  float dist;
void update(){
  lifespan--;
}
void display(){
  fill(255,255,0);
  // making sure it doesn't overlap the text
  if(((x<width/2-358/2)||(x>width/2+358/2))&&((y<height/2-196/2)||(y>height/2+196/2))){
  fill(255,255,0);
  dist = 50;
  beginShape();
  //eyes
  bezier(x,y,x+10,y-10,x+20,y-15,x+30,y);
  bezier(x,y,x+10,y+10,x+20,y+15,x+30,y);
  pushMatrix();
  scale(-1,1);
  bezier(-(x+dist),y,-(x+10+dist),y-10,-(x+20+dist),y-15,-(x+30+dist),y);
  bezier(-(x+dist),y,-(x+10+dist),y+10,-(x+20+dist),y+15,-(x+30+dist),y);
  popMatrix();
  //pupils
  fill(0);
  ellipseMode(CENTER);
  ellipse(x+15,y,3,20);
  pushMatrix();
  translate(dist,0);
  ellipse(x+15,y,3,20);
  popMatrix();
 
  endShape();

  }
}
void blink(){
  fill(0);
  if(lifespan<600&&lifespan>300&&thickness<40){
  thickness++;}
  if (lifespan<300&&thickness>0){
    thickness--;
  }
  if(((x<width/2-358/2)||(x>width/2+358/2))&&((y<height/2-196/2)||(y>height/2+196/2))){
  rect(x-20,y-20,100,thickness);
  }
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
