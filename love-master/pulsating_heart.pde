float a = 0.0;
float s = 0.0;
void setup() {
  size(640, 360);
  noStroke();
  textAlign(CENTER,CENTER);
  frameRate(30);
}

void draw() {
  background(255);
  
  a = a + 0.04;
  s = abs(cos(a)*2);
  
  translate(width/2, height/2);

  scale(s); 
  fill(255,0,100);
  textSize(100);
  text("♥",0,0);
  
}
