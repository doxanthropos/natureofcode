class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    location = new PVector(random(width),height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
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
    noStroke();
    fill(0);
    ellipse(location.x,location.y,20,20);
  }
  void applyForce(PVector f){
    acceleration.add(f);
  }
}