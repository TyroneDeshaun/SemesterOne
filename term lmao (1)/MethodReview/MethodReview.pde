void setup() {
  background(0);
  size(250, 250);
}

void draw() {
  text(minusOne(mouseX),10,20);
  text(numCounter(mouseX),50,20);
  text(isPositive(mouseX),90,20);
  text(converttoPercent(mouseX),140,20);
}

int minusOne(int n) {
  n-=1;
  return n;
}

int numCounter(int n) {
  n+=1;
  return n;
}

boolean isPositive(int n) {
  if (n<0) {
    return true;
  } else {
    return false;
  }
}

int convertToPercent(int n) {
  n=n/100;
  return n;
}

  
  