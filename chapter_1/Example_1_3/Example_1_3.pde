void setup(){
  size(500,500);
  //fullScreen();
  background(255);
}

void draw(){
  fill(255,10);
  rect(0,0,width,height);
  noStroke();
  fill(0);
  translate(width/2,height/2);
  
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  mouse.sub(center);
  mouse.setMag(200);
  stroke(0);
  strokeWeight(3);
  line(0,0,mouse.x,mouse.y);
}