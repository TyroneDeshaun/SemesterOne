//Class Name
class Button {
  //Class Variable
  boolean button = false;
  int x = 50;
  int y = 50;
  int w = 100;
  int h = 100;

  //Class Constructor
  Button(int temp1, int temp2, int temp3, int temp4) {
    x = temp1;
    y = temp2;
    w = temp3;
    h = temp4;
    button = false;
  }
  //Class Attributes
  void display() {
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
  //Class Behavior
  void clickButton() {
  }


  void setup() {
    size(400, 400);
  }

  void draw() {
    background(255);
    btn1.display();
  }

  void mousePressed() {
    btn1.clickButton();
  }
}