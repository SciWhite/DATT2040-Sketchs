class Mover {

  PVector position;//position, position is the vector quantity
  PVector velocity;//velocityy, velocity is the vector quantity
  PVector acceleration;//acceleration, acceleration is the vector quantity
  float mass;//Quality, quality is the scalar quantity

  Mover(PVector pos, PVector vel, PVector acc) {//Initializing the constructor
    position = pos;
    velocity = vel;
    acceleration = acc;
    mass = 1;//Gravity is equal to the falling speed
  }

  
  void applyForce(PVector force) {//Adding force
    PVector f = PVector.div(force,mass);//Division of vectors to find the acceleration of an object subjected to a force, Newton's second law of motion
    acceleration.add(f);//Force produces acceleration and adds acceleration to the object
  }
    
  void update() {
    velocity.add(acceleration);//Speed add acceleration
    position.add(velocity);//Location addition speed
    acceleration.mult(0);
  }
 

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,width/50,width/50);
  }

  void checkEdges() {//Boundary crossing detection, bounce back after collision to boundary

    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }

  }

}
