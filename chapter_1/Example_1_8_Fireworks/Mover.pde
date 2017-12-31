class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    location = new PVector(width/2,height);
    velocity = new PVector(random(-1,1),-6);
    acceleration = new PVector(0,0.03);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
  }
  void edge(){
    if(location.x>width||location.x<0){
      velocity.x = velocity.x * -1;
    }
    if(location.y>height+20){
      velocity.y = 0;
      acceleration.y = 0;
    }
  }
  void display(){
    noStroke();
    fill(255,100,100);
    ellipse(location.x,location.y,20,20);
  }
}