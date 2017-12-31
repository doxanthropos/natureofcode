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
  PVector gravity = new PVector(0,0.3);
  PVector wind = new PVector(0.2,0);
  for(int i = 0; i < movers.length; i++){
    movers[i].applyForce(gravity);
    if(mousePressed){
      movers[i].applyForce(wind);
    }
    movers[i].update();
    movers[i].edge();
    movers[i].display();
  }
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}