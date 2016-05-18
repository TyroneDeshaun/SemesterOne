int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup() {
  size(1800, 900);
  background(255);
  xspeed = 10;
  yspeed = 5/2;
  wdth = 10;
  ht = 10;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
void draw() {
  //background(0);
  fill(0);
  ellipse(xpos+10, ypos+10, wdth*2, ht*2);
  ellipse(xpos, ypos, wdth*4, ht*4);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    yspeed = yspeed * -1;
  }
  println(frameCount);
}
