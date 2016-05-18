void setup () {
size(650, 550);
background(255);
frameRate(60);
}

void draw() {
  ellipse(mouseX+20, mouseY+13, random(50), random(50));
  fill(random(140),random(155),random(155));
}
