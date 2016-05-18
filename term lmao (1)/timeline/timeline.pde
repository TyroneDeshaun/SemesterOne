void setup() {
  size(1000, 500);
}

void draw() {
  background(55);
  fill(255);
  textSize(30);
  text("Historic Computer Systems", 250, 50);
  stroke(255);
  strokeWeight(5);
  line(75, 225, 825, 225);
 
  histEvent("ENIAC: 1946","ENIAC was the first electronic general  purpose computer. \n It was Turing-complete, digital, and capable of being reprogrammed to solve a large class of numerical problems. \n It was heralded by the press as the Big Brain.",50, 150, 100, 40);
  //histEvent("histEvent test", 10,70,120,40);
  //histEvent("histEvent Test Big", 10,130,150,40");
}

void histEvent(String bText,String dText, int x,int y,int w, int h) {
  line(x+10, y+10, x+50, y+75);
  noStroke();
  fill(128);
  rect(x-2, y+2, w, h, 10);
  fill(128);
  rect(x, y, w, h, 10);
  fill(255);
  textSize(12);
  text(bText, x+20, y+20);
  if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h){
    fill(255);
    text(dText,x+5,y+10);
  }
}

//histEvent("histevent 1", 10, 10, 100, 40);
//histEvent("histevent 2", 10, 70, 120, 40);
//histEvent("histevent test

