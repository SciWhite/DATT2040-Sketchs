 void setup(){
   size(600,600);
   
   background(255);
   
   noLoop();
 }
 void draw(){
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  
  int w = int(random(width));
  int h = int(random(height));
 
  stroke(r,g,b);
  
  line(width/2,height/2,w,h);
 }
 void mousePressed() {
  redraw();
}
