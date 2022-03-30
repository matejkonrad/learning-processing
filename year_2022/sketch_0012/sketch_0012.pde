PImage img;

void setup() {
  size(900, 900, P3D);
  img = loadImage("img2.jpg");
  img.resize(width, height);
}

void draw() {
  background(0);
  fill(#f1f1f1);
  noStroke();

  float tilesX = 200;
  float tilesY = tilesX;

  float tileW = width / tilesX;
  float tileH = height / tilesY;
  rectMode(CENTER);

  push();
  translate(width / 2, height / 2);
  scale(1.5);
  float rotation = map(sin(radians(frameCount )), 1, -1, -20, 20);
  rotateY(radians(rotation));

  for (int x = 0; x < tilesX; x++){

    for (int y = 0; y < tilesY; y++){
      int px = int(x * tileW);
      int py = int(y * tileH);

      color c = img.get(px, py);

      float b = brightness(c);

      float s = map(b, 0, 255, 1, 0);

      float z = map(b, 0, 255, -1, 1);

      float mag = 200;
      fill(c);

      push();
      translate(x * tileW - width / 2, y * tileH - height / 2, z * mag);
      rect(0, 0, tileW * s * 1.5, tileH * s * 1.5);
      pop();

    }
  }

  pop();
  saveFrame("out_1/frame_####.tif");
}
