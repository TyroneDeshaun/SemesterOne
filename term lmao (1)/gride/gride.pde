void setup() {
  size(1000, 1000);
}
void draw() {
  drawGrid();
  noLoop();
}

void drawGrid() {
  for (int i=100; i<=width; i+=100){
    line(0, i, width, i); 
  }
}

