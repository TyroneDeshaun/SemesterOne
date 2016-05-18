void setup() {
  background(random(2,50));
  size(1000,500);
  for (int i=0; i<myLines.length; i++){
    myLines[i] = new Lines(random(width), random(height), random(1,5),random(1,20));
  }
}

void draw() {
  //myLines1.display();
  for (int i=0; i<myLines.length; i++) {
    Lines iLines = myLines[o];
    iLines.display();
  }
}



class Lines {
  //variables
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;
  
  //constructor
  Lines(float tempX, float tempY , float tempStroke, float tempLength){
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }
  
  //display
  
  void display() {
    strokeW = random(1,2);
    lineLength = random(1,50);
    //stroke(random(100,255));
    stroke(random(200),random(100),random(10));
    if(xpos>width || xpos< 0 || ypos>height || ypos<0){
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>90) {
        strokeWeight(strokeW);
        moveLeft(xpos,ypos,lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
      }
    }
  }
}