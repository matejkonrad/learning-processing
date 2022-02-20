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
 //fill(100);
 //noStroke();
    stroke(fg);
  strokeWeight(1);
  //

  for (int i = 0; i < 40; i++) {
    //drawTriangle(i*10);
    drawCircle(i * 20);
    
    // drawRectangle(i*20);
  }
  
  //saveFrame("output_1/frame_####.png");
}

void drawTriangle(int offset) {
  push();
  translate(width/2 + offset, height/2 - 255);
  rotateY(radians(frameCount * 6));
  float diff = 600;
  float x1 = 0;
  float y1 = -diff;
  float x2 = diff;
  float y2 = diff;
  float x3 = -diff;
  float y3 = diff;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();
}

void drawRectangle(int offset) {
  push();
  //translate(horizontalDown, horizontalDown);
  rectMode(CENTER);
  translate(width / 2 + offset, height / 2 + 220);
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
  //translate(width / 2 + offset, height / 2);

  //translate(-210 + offset, height / 2);

  translate(332 + offset, height / 2);
  //scale(radians(frameCount));?
  //rotateY(radians(frameCount * sin(radians(10))));

  rotateY(radians(frameCount * 0.5));

  rotateZ(radians(frameCount * -3.3));
  ellipse(0, 0, 120, 320);
  pop();
}
