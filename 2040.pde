int time;
void setup() {
  size(400, 400);
}

void draw() {
  float time = millis() / 1000.0; 
  float red = map(sin(time), -1, 1, 0, 255); 
  float green = map(cos(time), -1, 1, 0, 255); 
  float blue = map(tan(time), -1, 1, 0, 255); 
  stroke(color(red, green, blue)); 
  pushMatrix();
  translate(width/2, height/2);
  rotate(frameCount / 500.0);
  for (int i = 0; i < 6; i++) {
    pushMatrix();
    rotate(i * TWO_PI / 6);
    line(mouseX-height/2, mouseY-height/2, pmouseX-height/2, pmouseY-height/2);
    strokeWeight(5);
    popMatrix();
  }
  popMatrix();
  pushMatrix();
  translate(width/2, height/2);
  scale(-1, 1);
  for (int i = 0; i < 6; i++) {
    pushMatrix();
    rotate(i * TWO_PI / 6);
    line(mouseX, mouseY, pmouseX, pmouseY);
    popMatrix();
  }
  popMatrix();
}
