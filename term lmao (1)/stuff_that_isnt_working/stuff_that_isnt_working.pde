float xpos;
float ypos;
float strokeW;
float pointCount;



Lines[] myLines = new Lines [10];

void setup() {
  background(random(2,50));
  size(1000,500);
  //myLines = new Lines(random(width),random(height),random(1,5),random(1,20));
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width),random(height),random(1,5),random(1,20));
  }
}

void draw() {
  //myLines.display();
  for (int i=0; i<myLines.length;  i++) {
    Lines iLines = myLines[i];
    iLines.display();
  }
}

void moveRight(float startX, float startY, float moveCount){
  for(float i=0; i<moveCount; i++){
    point(startX+i, startY);
    xpos = startX + i;
  }
}

void moveLeft(float startX, float startY, float moveCount){
  for(float i=0; i<moveCount; i++){
    point(startX-i, startY);
    xpos = startX - i;
  }
}

void moveUp(float startX, float startY, float moveCount){
  for(float i=0; i<moveCount; i++){
    point(startX, startY+i);
    ypos = startY + i;
  }
}

void moveDown(float startX, float startY, float moveCount){
  for(float i=0; i<moveCount; i++){
    point(startX, startY-i);
    ypos = startY - i;
  }
}