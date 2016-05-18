void setup() {
  size(210, 200);
}
void draw() {
  background(255);
  stroke(0);
  line(0, 150, width, 150);
  stroke(255, 0, 0);
  strokeWeight(3);
  point(mouseX, 150);
  fill(0, 0, 255);
  displayGrade(mouseX/2);
}

void displayGrade(float grade) {
  
  if (grade>=94) {
    text("Assign letter grade A." + grade, 50, 50);
  } else if (grade<94 && grade>=90) {
    text("Assign letter grade A-." + grade, 50, 50);
  } else if (grade<89 && grade>=86) {
    text("Assign letter grade B+." + grade, 50, 50);
  } else if (grade<86 && grade>=82) {
    text("Assign letter grade B." + grade, 50, 50);
  } else if (grade<82 && grade>=79) {
    text("Assign letter grade B-." + grade, 50, 50);
  } else if (grade<79 && grade>=76) {
    text("Assign letter grade C+." + grade, 50, 50);
  } else if (grade<76 && grade>=73) {
    text("Assign letter grade C." + grade, 50, 50);
  } else if (grade<73 && grade>=69) {
    text("Assign letter grade C-." + grade, 50, 50);
  } else if (grade<69 && grade>=66) {
    text("Assign letter grade D+" + grade, 50, 50);
  } else if (grade<66 && grade>=63) {
    text("Assign letter grade D." + grade, 50, 50);
  } else if (grade<63 && grade>=61) {
    text("Assign letter grade D-." + grade, 50, 50);
  } else
    text("Assign letter grade F." + grade, 50, 50);
}

