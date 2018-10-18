// change the sketch so that the X movement of the 
// mouse will cause the triangle to complete one 
// full 360 degree rotation. this is best accomplished 
// with map().

float r;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(50);
  translate(width/2, height/2);
  rotate(radians(map(r, 0, 360, mouseX/2 , 360)));
  triangle(0, -100, 50, 100, -50, 100);
}
