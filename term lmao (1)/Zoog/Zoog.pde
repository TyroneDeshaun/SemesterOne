void setup() {
  //set size of window
  size(500, 500);
}

void draw() {
  //Draw white background
  background(187,219,153);
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));
zoog(int(random(width)),int(random(height)));

  
  }

  void zoog(int x, int y) {
    //set center mode
    rectMode(CENTER);

    //Draw Zoog's Body
    fill(173,227,14);
    stroke(0);
    fill(150);
    rect(x, y, 20, 100);

    //Draw Zoog's Head
    fill(265);
    stroke(0);
    fill(255);
    ellipse(x, y-30, 60, 60);

    //Draw Zoog's Eyes
    fill(169,14,227);
    fill(0);
    ellipse(x+10, y-30, 16, 32);
    ellipse(x-10, y-30, 16, 32);

    //Draw Zoog's legs
    fill(227,81,14);
    stroke(0);
    line(x-10, y+50, x-28, y+60);
    line(x+10, y+50, x+28, y+60);
  }

