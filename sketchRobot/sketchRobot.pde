float phi = 0.0;
float zoom = 1.0;
float shiftX = 0.0;
float shiftY = 0.0;

Bone rightArm;

void setup() {
  size(800, 600, P3D);
  
  rightArm = new Bone(50, -100, 0, 20, 60, 20, PI / 4, 0, 0);
  rightArm.child = new Bone(0, 0, 0, 20, 60, 20, 0, 0, 0);
}

void draw() {
  background(0);

  // Camera  
  camera(200, -300, 500, 0, 0, 0, 0, 1, 0);  

  // Light
  pointLight(255, 255, 255, 0, -500, 0);
  ambientLight(128, 128, 128);

  // translate rotate and scale
  translate(shiftX, shiftY, 0);
  rotateY(phi);
  scale(zoom);

  // Ground
//  fill(0, 255, 255, 64);
//  box(500, 0, 500);

  // Robot
  noStroke();
  fill(255, 255, 0, 128);

  // head
  pushMatrix();
  translate(0, -200, 0);
  sphere(30);
  popMatrix();

  // body
  pushMatrix();
  translate(0, -120, 0);
  box(60, 90, 20);
  popMatrix();

  rightArm.show();

  // arm right up
  pushMatrix();
  translate(-60, -155, 0);
  box(60, 20, 20);
  popMatrix();

  // arm right down
  pushMatrix();
  translate(-120, -155, 0);
  box(60, 20, 20);
  popMatrix();

  // arm left up
  pushMatrix();
  translate(60, -155, 0);
  box(60, 20, 20);
  popMatrix();

  // arm left down
  pushMatrix();
  translate(120, -155, 0);
  box(60, 20, 20);
  popMatrix();

  // leg right up
  pushMatrix();
  translate(-20, -75, 30);
  box(20, 20, 60);
  popMatrix();

  // leg right down
  pushMatrix();
  translate(-20, -35, 60);
  box(20, 60, 20);
  popMatrix();

  // leg right up
  pushMatrix();
  translate(20, -45, 0);
  box(20, 60, 20);
  popMatrix();

  // leg right down
  pushMatrix();
  translate(20, 15, 0);
  box(20, 60, 20);
  popMatrix();
}

