color bg = #000000;
color fg = #f1f1f1;
int num = 1;
int numDir = 1;
void setup() {
  size(900, 900);
}

void drawDust(int particles) {
  for (int i = 0; i < particles; i++) {
    float x = random(width);
    float y = random(height);
    fill(fg);
    if (i % 2 == 0) {
      rect(x, y, random(1, 10), random(1, 10));
    }
    if (i % 3 == 0) {
      ellipse(x, y, random(1, 10), random(1, 10));
    } else {
      line(x, y, x+ random(1, 20), y + random(1, 20));
    }
  }
}

void draw() {
  background(bg);
  // Get Creative!
  drawDust(5);
  
  push();
  noFill();
  stroke(fg);
  for (int i = 1; i <= num; i++) {
    rect(0, 0, height - i* 10, width - i * 10);
  }
  pop();
  
  num += numDir;
  
  if (num >= 90 && numDir == 1) {
    numDir = -1;
  }
  
  if (num <= 1 && numDir == -1) {
    numDir = 1;
  }
  
  saveFrame("output2/noise_####.png");
  
}
