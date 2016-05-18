class CalcButton {
  // Class Variables
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int boxSize = 45;
  int buttonW = 45;
  int buttonH = 45;
  boolean overBox = false;
  
  
  //Constructor for Number Buttons
  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
    //println(numButotnValue);
  }
  
  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH){
  isNumber = true;
  numButtonValue = tempNumButtonValue;
  buttonW = tempW;
  buttonH = tempH;
  return this;
}
CalcButton asOperator(String tempOpButtonValue) {
  opButtonValue = tempOpButtonValue;
  return this;
}
CalcButton asSpecial(String buttonValue){
  isSpecial = true;
  spButtonValue = buttonValue;
  return this;
}
  
  //Draw button on the canvas
  void display(){
    //Draw rounded edged button on canvas
    if(isNumber) {
      fill(47,147,51);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,buttonW,buttonH,10);
      fill(85,129,222);
      textSize(24);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (isSpecial){
      fill(255);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,boxSize,boxSize,10);
      fill(0);
      textSize(24);
      text(spButtonValue, xpos+15, ypos+30);
    }
  }
  //Handle mouse actions
  void click(){
    overBox = mouseX > xpos && mouseX < xpos+boxSize && mouseY > ypos && mouseY < ypos + boxSize;
}
}