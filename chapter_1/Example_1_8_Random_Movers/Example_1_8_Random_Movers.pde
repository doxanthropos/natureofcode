Mover[] movers = new Mover[20];
void setup(){
  size(500,500);
  background(255);
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover();
  }
  noStroke();
}

void draw(){
  fill(255,10);
  rect(0,0,width,height);
  for(int i = 0; i < movers.length; i++){
    movers[i].move();
    movers[i].bounce();
    movers[i].display();
  }
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}