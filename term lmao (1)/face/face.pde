void setup(){
 size(1600,1600); 
  background(255);
}
void draw() {
face(int(random(width)),int(random(height)));
}

void face(int x, int y) {
    //head
  fill(256);
  stroke(0);
  ellipse(200,200,200,200);
  //mouth
  stroke(0);
  line(150,250,225,250);
  //nose
  stroke(0);
  ellipse(200,200,35,35);
  line(200,190,200,200);
  //staring ears
  stroke(0);
  ellipse(100,100,100,100);
  ellipse(300,100,100,100);
  fill(256);
  ellipse(100,100,20,20);
  ellipse(300,100,20,20);
  //the real eyes
  stroke(0);
  fill(256,0,0);
  ellipse(125,200,20,20);
  ellipse(270,200,20,20);

}
  
