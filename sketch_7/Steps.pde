
void drawStep() {
  thresholdlower = int(map(mouseX, 0, width, 0, 255));
  thresholdupper = int(map(mouseY, 0, height, 0, 255));
  color[][] lines = new color[int(width/weight)][int(height/weight)];

  for (int i=0; i<img.width; i+=weight) {
    for (int j=0; j<img.height; j+=weight) {
      if (i + j*img.width > img.pixels.length) continue;
      color c = img.pixels[i + j*img.width];
      if (int(i/weight) >= lines.length || int(j/weight) >= lines[0].length) continue;
      if (brightness(c) < thresholdlower || brightness(c) > thresholdupper) {
        lines[int(i/weight)][int(j/weight)] = color(0);
      } else {
        lines[int(i/weight)][int(j/weight)] = color(255);
      }
    }
  }
  for (int i=0; i<width/weight; i++) {
    for (int j=0; j<height/weight; j++) {
      fill(lines[i][j]);
      rect(i*weight, j*weight, weight, weight);
    }
  }
  fill(255);
  text("Decide intact pixels and to-be-sorted pixels\nIf pixel brightess <= "+thresholdlower+" and >= "+thresholdupper+"\n mark them as intact pixels and fill with black, and the remaining to white.", width/2, height - 70);
}
