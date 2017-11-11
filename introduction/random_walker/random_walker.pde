class Walker {
  int x;
  int y;
  Walker(){
  x = width/2;
  y = height/2;
  }
  void render(){
  stroke(0);
  point(x,y);
  }
  void step(){
    x += int(random(3)) - 1;
    y += int(random(3)) - 1;
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}

Walker w;

void setup(){
  size(500,500);
  w = new Walker();
  background(255);
}

void draw(){
  w.render();
  w.step();
}