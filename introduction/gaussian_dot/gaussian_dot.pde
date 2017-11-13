import java.util.Random;

Random generator;
void setup(){
  size(500,500);
  generator = new Random();
  background(255);
  noStroke();
}

void draw(){
  fill(255,2);
  //rect(0,0,width,height);
  float stddev = 40;
  float mean = width/2;
  float h = (float) generator.nextGaussian();
  fill(155,0,0,20);
  ellipse(h*stddev+mean,height/2,20,20);
}