
import com.hamoid.*;
VideoExport videoExport;

String sketcname = 'heh';

void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  
  noFill();
  stroke(#f1f1f1);
  push();
  translate(sin(radians(frameCount)), 0);
  ellipse(0,0, 100, 500);
  pop();
  
  rec(30, 03, false);
}

void rec(int rate, int dur, boolean addTimestamp) {
  if (frameCount == 1) {
    if (addTimestamp == false) {
      videoExport = new VideoExport(this, "../"+sketchname+".mp4");
    } else {
      videoExport = new VideoExport(this, "../" + sketchname + timestamp() + ".mp4");
    }
    videoExport.setFrameRate(rate);
    videoExport.startMovie();
  }

  videoExport.saveFrame();

  if (frameCount == dur) {
    exit();
  }
  println(frameCount);
}
