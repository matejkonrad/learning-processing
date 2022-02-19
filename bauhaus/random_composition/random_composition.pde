color bg = #000000;
color fg = #f1f1f1;

float cirlceX, circleY, cirlceR;

float rectX, rectY, rectR;

float lineX, lineX2, lineY, lineY2, strokeSize;

void setup() {
  size(900,900);
  frameRate(1); 
  cirlceX = height / 2;
  
  circleY = width / 2;
  cirlceR = 300;
  
  rectX = width / 2; 
  rectY =  height / 2;  
  rectR = 250; 
  
  lineX =  0;
  lineY = 0; 
  lineX2 = 100;
  lineY2 = 0;
}

void draw() {
  background(bg);
  fill(fg);
  push();
  noStroke();
  ellipseMode(CENTER);
  
  translate(random(100, 800), random(100, 800));
  scale(random(0.1, 3));
  ellipse(0, 0, 100, 100); 
  pop();
  
  push();
  noStroke();
  rectMode(CENTER);
  float translatedX = random(400, 500);
  float translatedY = random(400, 500);
  println("translated", translatedY, translatedX);
  translate(translatedX, translatedY);
  
  rotate(radians(random(360)));
  scale(random(0.1, 1.5));
  rect(0, 0, rectR, rectR);
  pop();
  
  push();
  translate(random(100, 800), random(100, 800));
  stroke(fg);
  strokeWeight(4);
  rotate(radians(random(360)));
  
  scale(random(0.1, 5.0));
  line(lineX, lineY, lineX2, lineY2);
  pop();
  
  saveFrame("output/heh_####.png");
}
