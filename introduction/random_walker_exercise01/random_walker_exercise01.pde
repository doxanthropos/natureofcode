class Walker {
  int x;
  int y;
  float count;
  Walker(){
  x = width/2;
  y = height/2;
  count = 0.01;
  }
  void render(){
    stroke(0);
    point(x+sin(count)*10,y+cos(count)*10);
  }
  void step(){
    x += (int(random(3)) - 1)*20;
    y += (int(random(3)) - 1)*20;
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
    count++;
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