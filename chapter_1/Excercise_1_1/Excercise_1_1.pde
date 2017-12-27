int delayCount;
int targetCount;
int style; 
int rainbow;
PVector offset;
PVector location;
PVector velocity;

void setup() {
  size(500, 500);
  colorMode(HSB,100);
  background(0,100,0);
  velocity = new PVector(0.005,0.005);
  offset = new PVector(0,10000);
  location = new PVector(noise(offset.x)*width,noise(offset.y)*height);
  delayCount = 0;
  targetCount = (int) random(5, 50); // set target count to a random integer between 5 and 50
}

// draw function
void draw() {
  location.x = noise(offset.x)*width;
  location.y = noise(offset.y)*height;
  delayCount++; // increment delay count (shorthand for delayCount = delayCount + 1)

  if (delayCount == targetCount) {
    style = (int) random(4);
    targetCount = (int) random(2, 10) ;
    delayCount = 0;
  }
  else {
    style = 0;
  }

    stroke(rainbow%100,100,60); 
    fill(rainbow%100,100,100);

    // switch statement
    switch(style) {
    case 0:
      // draw a point
      point(location.x, location.y);
      break;

    case 1:
      // draw a circle with random radius
      float eSize = random(1, 20);
      ellipse(location.x, location.y, eSize, eSize);
      break;

    case 2:
      // draw a rectangle with random size
      float qSize = random(1, 10);
      quad(location.x-qSize, location.y, location.x, location.y-qSize, location.x+qSize, location.y, location.x, location.y+qSize   );
      break;

    case 3:
      // draw a triangle with random size
      float tSize = random(1, 5);
      triangle(location.x-tSize, location.y+tSize, location.x, location.y-tSize, location.x+tSize, location.y+tSize); 
      break;
    } // end of switch statement

  // save your drawing when you press keyboard 's'
  if (keyPressed == true && key=='s') {
    saveFrame("yourName.jpg");
  }

  // erase your drawing when you press keyboard 'r'
  if (keyPressed == true && key == 'r') {
    background(255);
  }
  rainbow ++;
  offset.add(velocity);
}