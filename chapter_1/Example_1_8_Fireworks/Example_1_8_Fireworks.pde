Mover[] movers = new Mover[20];
void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover();
  }
  noStroke();
}

void draw(){
  fill(0,10);
  rect(0,0,width,height);
  for(int i = 0; i < movers.length; i++){
    movers[i].update();
    movers[i].edge();
    movers[i].display();
  }
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}