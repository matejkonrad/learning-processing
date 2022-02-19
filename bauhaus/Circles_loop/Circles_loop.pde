color bg = #000000;
color fg = #f1f1f1;
float currentFull = 0;
int objectTypeCounter = 1;

void setup() {
  size(900, 900);
  frameRate(60);
}

void drawShape(float index) {
  
  if (index % 3 == 0) {
    rectMode(CENTER);
    rect(0, 0, 50, 50);

    return;
  }

  if (index % 2 == 0) {
    triangle(0, -25, 25, 25, -25, 25);
    return;
  }

  ellipse(0, 0, 50, 50);
}

void draw() {
  background(bg);

  for (float i = 1; i <= 10; i++) {
    for (float j = 1; j <= 10; j++) {
      push();
      int padding = 50;
      float x = map(j, 1, 10, padding, width - padding);
      float y = map(i, 1, 10, padding, width - padding);
      translate(x, y);
      //float translatin = map(currentFull, 0, 100, 1, 20);
      //translate(translatin,0);
      
      float index = j + (10 * i-1);
      float filler = map(currentFull, 0, 100, -200, 255);

      if (currentFull > 100) {
        currentFull = 0;
      }
      currentFull+= 1;
      fill(filler);
      //fill(255);
      //rotate(tan(radians(frameCount)));
      rotate(tan(index));
      //if (index != currentFull) {
      //rotate(sin(radians(currentFull - 50)));
      //}
      //scale(sin(radians(frameCount)));
      
      
      drawShape(index);
      pop();
    }
  }
  
  saveFrame("output_1/frame_####.tif")
}
