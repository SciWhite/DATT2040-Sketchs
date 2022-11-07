//Image reference: https://wallpapercave.com/free-halloween-wallpapers-screensavers
int weight = 1; // Weight of pixels
int step = 1; // Step
int thresholdlower = 50;
int thresholdupper = 200;
PImage img;

void setup() {
  size(1920, 1400,P2D);
  img = loadImage("Halloween.jpg");
  noStroke();
  textAlign(CENTER);
  textSize(12);
}

void draw() {
  background(0);
  fill(255);
  switch(step) {// Draw each step
  case 1:
    drawStep();
    break;
  }
}
