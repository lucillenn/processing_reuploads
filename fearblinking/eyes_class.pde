  class Eyes{
   PShape eyes;
   int lifespan;
   float x = random(0,width);
   float y = random(0,height);
   int alpha;
   float a;
   boolean dead;
   Eyes(PShape lol){
    this.eyes = lol;
    this.lifespan = 255;
    this.dead = false;
    this.lifespan--;
   }
  void blink(){
   
    if (lifespan<200 && lifespan>100){
     fill(0);
     rect(x,y,150,50);    
    }
  }
  boolean isDead(){
    if (lifespan < 0) {
      return true;
    } else {
      return false;
    }
  }
  void blink2(){
    
  }
  void display(){
    //making sure it doesn't touch the text
    if (400 < x && x < 900 && 300 < y && y < 500){
     println("nothing");
    }
    else if (stage3 == true){
    fill(255,0,255,alpha);
    shape(eyes,x,y,200,200);
    }
  
  }
  
  }
