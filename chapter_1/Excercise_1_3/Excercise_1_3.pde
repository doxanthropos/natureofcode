PVector location;
PVector velocity;
void setup(){
  size(500,500,P3D);
  background(0);
  location = new PVector(width/2,height/2,-50);
  velocity = new PVector(2.5,5,3);
}

void draw(){
  background(0);
  location.add(velocity);
  noStroke();
  lights();
  translate(location.x, location.y, location.z);
  sphere(28);
  if(location.x>width||location.x<0){
    velocity.x = velocity.x * -1;
  }
  if(location.y>height||location.y<0){
    velocity.y = velocity.y * -1;
  }
  if(location.z>0||location.z<500){
    velocity.z = velocity.z * -1;
  }
  if (keyPressed == true && key == 's') {
    saveFrame("yourName.jpg");
  }
}