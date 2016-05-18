int i =0;

void setup() {
  size(200, 200);
}

void draw() {
  while (i<width) {
    line( 0, i, width, i);
    i = i + 20;
  }
  noLoop();
}

