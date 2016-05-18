size (200, 200);
background(255);
int i = width;
while (i>=0) {
  stroke(2);
  fill(i);
  ellipse(width/2, height/2, i, i);
  i-=20;
} 
