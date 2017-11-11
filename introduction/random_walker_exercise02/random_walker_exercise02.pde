class Walker {
  int x;
  int y;
  Walker(){
  x = width/2;
  y = height/2;
  }
  void render(){
    strokeWeight(10);
    stroke(0,10);
    point(x,y);
  }
  void step(){
    x += (int(random(3)) - 1)*random(10);
    y += (int(random(3)) - 1)*random(10);
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}

Walker w;

void setup(){
  size(500,500);
  w = new Walker();
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw(){
  w.render();
  w.step();
  if (keyPressed == true && key == 's') {
    saveFrame("randomWalker.jpg");
  }
}