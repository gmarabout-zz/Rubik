import peasy.*;

Rubik rubik = new Rubik(150);

PeasyCam camera;

float angle = 0.0;

void setup(){
  size(500, 500, P3D);
  camera = new PeasyCam(this, 600);
  camera.lookAt(0, 0, 0);
}

void draw() {
  background(50);
  lights();
  
  rotateY(radians(angle));
  rotateZ(radians(45));
  rubik.draw();
 
}





