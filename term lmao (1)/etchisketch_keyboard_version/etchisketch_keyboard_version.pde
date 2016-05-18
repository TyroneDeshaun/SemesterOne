int x, y;

void setup() {
  size(500, 500);
  background(255);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(1);
    }
  }
  if (key == CODED) {
    if (keyCode == LEFT) {
      moveLeft(1);
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(1);
    }
  }
  if (key == CODED) {
    if (keyCode == DOWN) {
      moveDown(1);
    }
  }
}

//or 

void draw() {
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      fill(0);
    }
  }
  if (keyPressed) {
    if (key == 'b' || key =='B') {
      fill(0);
    }
  }
  if (keyPressed) {
    if (key == 'b' || key =='B') {
      fill(0);
    }
  }
  if (keyPressed) {
    if (key == 'b' || key =='B') {
      fill(0);
    }
  }
}

//Take Pictures
void mouseClicked() {
  saveFrame("line-######.png");
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