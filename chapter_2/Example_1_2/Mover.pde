class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover(){
    location = new PVector(random(width),height/4);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(0.5,5);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    //velocity.limit(5);
    acceleration.mult(0);
  }
  void edge(){
    if(location.x>width||location.x<0){
      velocity.x = velocity.x * -1;
    }
    if(location.y>height||location.y<0){
      velocity.y = velocity.y * -1;
    }
  }
  void display(){
    stroke(0);
    fill(0,0,150,100);
    ellipse(location.x,location.y,20*mass,20*mass);
  }
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
}