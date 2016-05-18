boolean button = false;
int x = 50;
int y = 50;
int w = 100;
int h = 100;


void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  if (button) {
    //Button will be in one of two states
    fill(0);
    text("Button On." + str(button), 55, 40);
    fill(55);
    rect(x, y, w, h);
  } else if (!button) {
    fill(0);
    text("Button On." + str(button), 55, 40);
    fill(222);
    rect(x, y, w, h);
  }
}

void mousePressed() {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    button = !button;
  }
}