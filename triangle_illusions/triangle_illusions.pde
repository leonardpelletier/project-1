float angle = 0;
float change = 0;
boolean isBlack = true;

void setup() {
  size (600, 600, P2D);
  smooth();
}

void draw() {
  println(frameRate);
  background(255, 0, 0);
  translate(300, 300);
  noStroke();



  angle = change;
  while (angle < 2*PI+change) {
    if (isBlack) {
      fill(0);
    } else {
      fill(255);
    }

    isBlack = !isBlack;
    pushMatrix();
    rotate(angle*change);
    triangle(0, 0, 420, 25, 420, -25);
    angle = angle + 0.55;
    popMatrix();
  }
}
