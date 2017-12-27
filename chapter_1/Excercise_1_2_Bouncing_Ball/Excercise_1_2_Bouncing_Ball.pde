PVector location;
PVector velocity;
void setup(){
  size(500,500);
  background(255);
  location = new PVector(width/2,height/2);
  velocity = new PVector(2.5,5);
  noStroke();
}

void draw(){
  fill(255,10);
  rect(0,0,width,height);
  location.add(velocity);
  fill(0);
  ellipse(location.x,location.y,10,10);
  if(location.x>width||location.x<0){
    velocity.x = velocity.x * -1;
  }
  if(location.y>height||location.y<0){
    velocity.y = velocity.y * -1;
  }
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}