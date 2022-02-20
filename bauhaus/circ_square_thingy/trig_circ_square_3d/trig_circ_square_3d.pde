color bg = #000000;
color fg = #f1f1f1;
int horizontalDownDirection=4;
int horizontalDown;
void setup() {
  size(900, 900, P3D);
  horizontalDown = 0;
}

void draw() {
  background(bg);
  noFill();
  stroke(fg);
  strokeWeight(4);
  drawTriangle();
  drawCircle(0);
  drawRectangle();
  
  saveFrame("output/frame_####.png");
}

void drawTriangle() {
  push();
  translate(width/2, height/2 - 255);
  rotateY(radians(frameCount * 6));
  float diff = 150;
  float x1 = 0;
  float y1 = -diff;
  float x2 = diff;
  float y2 = diff;
  float x3 = -diff;
  float y3 = diff;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();
}

void drawRectangle() {
  push();
  //translate(horizontalDown, horizontalDown);
  rectMode(CENTER);
  translate(width / 2, height / 2 + 220);
  //scale(sin(radians(frameCount)));
  rotateY(radians(frameCount * 2));
  
  rotateZ(radians(frameCount * 2));
  rect(0, 0, 225, 225);
  pop();
  if (horizontalDown == width - 100 && horizontalDownDirection >= 0) {
    horizontalDownDirection = -horizontalDownDirection;
  }

  if (horizontalDown == 0 && horizontalDownDirection <= 0) {
    horizontalDownDirection = -horizontalDownDirection;
  }
  horizontalDown += horizontalDownDirection;
}

void drawCircle(int offset) {
  push();
  translate(width / 2 + offset, height / 2);
  //scale(radians(frameCount));
  rotateY(radians(frameCount * sin(radians(10))));
  ellipse(0, 0, 210, 210);
  pop();
}
