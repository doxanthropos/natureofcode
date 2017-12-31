Mover b;
void setup(){
  size(500,500);
  background(255);
  b = new Mover();
  noStroke();
}

void draw(){
  fill(255,10);
  rect(0,0,width,height);
  b.move();
  b.bounce();
  b.display();
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}