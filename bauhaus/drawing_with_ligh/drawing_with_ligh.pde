color bg = #000000;
color fg = 241;
int deviation = 5;

void setup() {
  size(900,900);   
  background(bg);
  frameRate(60);
}

void draw() {
  noStroke();
  float deviatedX = random(mouseX - deviation, mouseX + deviation);
  float deviatedY = random(mouseY - deviation, mouseY + deviation);
  float opacity = random(100, 255);
  fill(fg, fg, fg, opacity);
  
  if (mousePressed) {
    if (frameCount % 2 == 0) {
      ellipse(deviatedX, deviatedY,random(10, 80), random(10, 80));
    }
    
    if (frameCount % 3 == 0) {
      rect(deviatedX, deviatedY, random(10, 80), random(10, 80));
    }
  }
  saveFrame("output/frame_####.png");
}

