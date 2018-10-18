// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  if (mousePressed && mouseX < width/2 + 200 && mouseX > width/2 - 200 && mouseY < height/2 + 200 && mouseY > height/2 -200) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(width/2, height/2, 200, 200);
}
