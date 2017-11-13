import java.util.Random;

float stddev;
Random generator;
void setup(){
  size(500,500);
  stddev = 20;
  generator = new Random();
}

void draw(){
  fill(255,2);
  rect(0,0,width,height);
  float h = (float) generator.nextGaussian();
  print(h);
  fill(0);
  ellipse(random(width),random(height),h*stddev+100,h*stddev+100);
}