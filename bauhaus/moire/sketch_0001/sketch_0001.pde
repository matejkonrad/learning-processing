color bg = 0;
color fg = #f1f1f1;
int offsetX, offsetY = 0;


void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  
  renderMoire(0,0);
  
  renderMoire(0 + offsetX, 0 + offsetY);
  
  renderMoire(width - offsetX, height - offsetY);
  
  offsetX += 1;
  
  offsetY += 1;
}


void renderMoire(int x, int y) {
  push();
  noFill();
  stroke(fg);
  rectMode(CENTER);
  translate(x, y);
  for (int i = 1; i <= 500; i++) {
    rect(0,0, 100*i, 100*i);
  }
  pop();
}
