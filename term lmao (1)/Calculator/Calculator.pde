CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[1];
String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue;
boolean firstNum;

void setup() {
  size(500, 500);
  background(255);
  frameRate(10);
  noFill();
  strokeWeight(3);
  stroke(200);
  rect(125, 120, 250, 250, 10);

  numButtons[0] = new CalcButton(65, 275).asNumber(0, 35, 35);
  numButtons[1] = new CalcButton(10, 80).asNumber(1, 35, 35);
  numButtons[2] = new CalcButton(60, 80).asNumber(2, 35, 35);
  numButtons[3] = new CalcButton(110, 80).asNumber(3, 35, 35);
  numButtons[4] = new CalcButton(10, 150).asNumber(4, 35, 35);
  numButtons[5] = new CalcButton(60, 150).asNumber(5, 35, 35);
  numButtons[6] = new CalcButton(110, 150).asNumber(6, 35, 35);
  numButtons[7] = new CalcButton(10, 220).asNumber(7, 35, 35);
  numButtons[8] = new CalcButton(60, 220).asNumber(8, 35, 35);
  numButtons[9] = new CalcButton(110, 220).asNumber(9, 35, 35);
  opButtons[0] = new CalcButton(150, 220).asOperator("+");
  firstNum = true;
}

void draw() {
  fill(85, 129, 222);

  //draw number buttons
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.display();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.click();
    if (inumButton.overBox) {
      if (firstNum) {
        println(i+ " " + inumButton.numButtonValue);
        valueToCompute += int(inumButton.numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(inumButton.numButtonValue);
        displayValue = valueToCompute2;
      }
    } else if (iOpButton.opButtonValue == "=") {
      //perform calculation
      firstNum = true;
      performCalculation();
    } else if (iOpButton.opButtonValue == "-") {
      if (result != 0) {
        opValue = '-';
        valueToCompute2 = "";
        firstNum = false;
        displayValue = "-";
      } else {
        opValue = '-';
        firstNum = false;
        displayValue = "-";
      }
    }
  }
}
    void performCalculation() {
      //set string values to integers
      valueToComputeI = float(valueToCompute);
      valueToComputeI2 = float(valueToCompute2);
    }

    void updateDisplay() {
      fill(200, 200, 150);
      rect(10, 10, 310, 35, 7);
      fill(0);
      textSize(25);
      text(displayValue, 20, 37);
    }