/*
  this is sketch "Example 8.2: Recursion twice" from page 362
*/
void setup(){
  size(640,360);
  colorMode(HSB,100);
}

int colorstep;
void draw(){
  background(0,0,100);
  colorstep = 0;
  drawCircle(width/2,height/2,200.0);
  if (keyPressed == true && key == 's') {
    saveFrame("image.jpg");
  }
}

void drawCircle(float x, float y, float radius){
  noStroke();
  fill(colorstep,100,100,50);
  colorstep += 4;
  ellipse(x,y,radius,radius);
  if(radius>2){
    drawCircle(x + radius/2,y, radius/2);
    drawCircle(x - radius/2,y, radius/2);
  }
}