int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

// Algorithm for your first name
void drawName() {
  moveDown(10);
  moveRight(3);
  moveUp(7);
  moveRight(5);
  moveDown(7/2);
  moveLeft(5);
  moveRight(5);
  moveDown(9/2);
  moveRight(3);
  moveUp(7);
  moveDown(7);
  moveRight(3);
  moveUp(6);
  moveRight(3);
  moveLeft(3);
  moveDown(8/3);
  moveRight(3);
  moveLeft(3);
  moveDown(8/3);
  moveRight(3);
  moveLeft(3);
  moveDown(2);
  moveRight(5);
  moveUp(6);
  moveRight(5);
  moveLeft(5);
  moveDown(4);
  moveRight(5);
  moveLeft(5);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

