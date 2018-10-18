// this sketch uses a 2d array to store colors that 
// will be used to draw rectangles in a grid. 

// change the draw loop so that it draws evenly spaced 
// rectangles across the screen, and add a conditional 
// to make sure that once a color turns white, it returns 
// back to black as seen in the example gif.

int gridW = 10;
int gridH = 10;
float[][] greyColors = new float[gridW][gridH];

void setup() {
  size(600, 600);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j] = int(map(j * gridW + i, 0, gridW * gridH, 0, 255));
    }
  }
}

void draw() {
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j]+=10;

      for (int h = 0; h < height; h = h + 60) {
        for (int z = 0; z < width; z = z + 60) {
          
          fill(greyColors[i][j]);
          rect(h, z, width/gridW, height/gridH);
        }
      }
    }
  }
}
