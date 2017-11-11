class Walker {
  int x;
  int y;
  Walker(){
  x = width/2;
  y = height/2;
  }
  void render(){
  stroke(0);
  fill(0,10);
  int choice = int(random(3));
  if(choice==0){
    ellipse(x,y,10,10);
  } else if(choice==1){
    triangle(x,y,x+5,y+10,x-5,y+10);
  } else if(choice==2){
    rect(x,y,10,10);
  }
  }
  void step(){
    x += (int(random(3)) - 1)*5;
    y += (int(random(3)) - 1)*5;
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