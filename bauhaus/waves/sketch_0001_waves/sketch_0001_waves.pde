color bg = 0;
color fg = #f1f1f1;

void setup() {
  size(900, 900, P3D);
}

void draw() {
  background(0);
  
  float amount = map(sin(radians(frameCount)), 0, 1, 615, 1007);
  int size = 90;
  drawWave(amount, size);
  drawInverseWave(amount, size);
}


void drawWave(float amount, int size) {
  for (float i = 0; i < amount; i++) {
    float y = map(sin(radians(i + frameCount * 4)), 0, 1, 50, 400);
    float x = map(i, 51, amount, 0, width + 50);
    push();
    noFill();
    stroke(fg);
    translate(0, height / 2);
    translate(x, y);
    ellipse(0, 0, size, size);
    pop();
  }
}



void drawInverseWave(float amount, int size) {
  for (float i = 0; i < amount; i++) {
    float y = map(sin(radians(i - frameCount * 4)), 0, 1, 50, 400);
    float x = map(i, 71, amount, 0, width + 50);
    
    push();
    noFill();
    stroke(fg);
    translate(0, height / 2);
    translate(x, y);
    ellipse(0, 0, size, size);
    pop();
  }
}
