/* "A force is a vector that causes an object with mass to accelerate." */
Mover[] movers = new Mover[10];
void setup(){
  size(600,600);
  background(200);
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover();
  }
  noStroke();
}
void draw(){
  background(200);
  for (Mover m : movers){
    PVector gravity = new PVector(0,0.3);
    gravity.mult(m.mass);
    m.applyForce(gravity);
    if(mousePressed){
      PVector wind = new PVector(0.2,0);
      m.applyForce(wind);
    }
    m.update();
    m.edge();
    m.display();
  }
}