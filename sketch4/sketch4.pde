//sketch_2_NOC_2_1_forces_mod
//original:https://github.com/atarilover123/DATT-2040-Math-Art-Code/blob/main/Week_4/sketch_2_NOC_2_1_forces_mod/sketch_2_NOC_2_1_forces_mod.pde
Mover[] bounce;
int num = 50;
void setup() {
  size(800,800);//Set the size of the canvas
  bounce = new Mover[num];

  for (int i = 0; i < num; i++) {
    bounce[i] = new Mover(new PVector(width/50*i, width/50*i), new PVector(0,0),new PVector(0,0));} //实例化一个物体（这里是球），java中要使用一个对象，先要实例化它
}

void draw() {
  background(255);

  PVector wind = new PVector(0.01,0);//Instantiate a horizontal external wind force
  PVector gravity = new PVector(0,0.1);//Instantiate a vertical direction of gravity
  for (Mover m : bounce) {
    
  
  m.applyForce(wind);//Add a wind to the objects
  m.applyForce(gravity);//Add a gravity to the objects


  m.update();//Update ball position
  m.display();//Redraw the ball, and then the position of the ball keeps changing
  m.checkEdges();//Boundary detection

}
}
void mousePressed() {//Press the mouse while applying a force to the object in the x,y direction, the magnitude of the force is related to the mouse position.
  for (Mover m : bounce) {
  m.applyForce(new PVector(mouseX/200,mouseY/100)); }
}
