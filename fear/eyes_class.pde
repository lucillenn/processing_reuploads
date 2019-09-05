  class Eyes{
   PShape eyes;
   int lifespan;
   Eyes(PShape lol){
    this.eyes = lol;
    this.lifespan = 255;
   }
  void display(){
    float x = random(0,width);
    float y = random(0,height);
    //making sure it doesn't touch the text
    if (400 < x && x < 900 && 300 < y && y < 500){
     println("nothing");
    }
    else if (stage3 == true){
    shape(eyes,x,y,200,200);
    }
  
  }
  
  }
