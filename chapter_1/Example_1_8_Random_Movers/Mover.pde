class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    location = new PVector(random(width),random(height));
    velocity = new PVector(3,0);
    acceleration = new PVector(0,1);
  }
  
  void move(){
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
  }
  void bounce(){
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
}