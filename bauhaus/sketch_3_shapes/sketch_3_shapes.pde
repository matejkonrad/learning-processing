color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
}

void draw() {
  background(bg);

  push();
  fill(bg);
  stroke(fg);
  translate(width / 2, height/2);
  //scale(sin(radians(frameCount)) * 2);
  ellipse(0, 0, 120, 120);
  pop();

  push();
  fill(bg);
  stroke(fg);
  translate(width / 2, height/2);
  //rectMode(CENTER);
  rotate(radians(frameCount));
  rect(90, -105, 200, 200);
  pop();


  push();
  noFill();
  stroke(fg);
  translate(width / 2, height/2);
  float diff = 100;
  float offset = -160;
  float x1 = 0+ offset;
  float y1 = -diff ;
  float x2 = diff + offset;
  float y2 = diff;
  float x3 = -diff + offset;
  float y3 = diff;
  rotate(radians(frameCount));
  triangle(x1, y1, x2, y2, x3, y3);
  pop();
}
