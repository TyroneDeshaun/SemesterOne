void setup() {
  size(500, 500);
}
void draw() {
  drawGrid();
  noLoop();
}

void drawGrid() {
  for (int i=10; i<=width; i+=10){
    line(0, i, width, i); 
  }
}

