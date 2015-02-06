// object position
float phi = 0.0;
float zoom = 1.0;
float shiftX = 0.0;
float shiftY = 0.0;

// robot bones
Bone rightArm;
Bone leftArm;
Bone rightLeg;
Bone leftLeg;

void setup() {
  size(800, 600, P3D);
  
  // create bones (position, size, rotate)
  rightArm       = new Bone(  -30, -200,    0, 20, 60, 20, 0, 0, 0);
  rightArm.child = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
  leftArm        = new Bone(   30, -200,    0, 20, 60, 20, 0, 0, 0);
  leftArm.child  = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
  rightLeg       = new Bone(  -20, -120,    0, 20, 60, 20, 0, 0, 0);
  rightLeg.child = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
  leftLeg        = new Bone(   20, -120,    0, 20, 60, 20, 0, 0, 0);
  leftLeg.child  = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
  
  // set swing
  rightArm.swAmp       =  0.01;
  rightArm.child.swAmp =  0.01;
  leftArm.swAmp        = -0.01;
  leftArm.child.swAmp  = -0.01;
  rightLeg.swAmp       = -0.01;
  rightLeg.child.swAmp = -0.01;
  leftLeg.swAmp        =  0.01;
  leftLeg.child.swAmp  =  0.01;
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
  fill(0, 255, 255, 64);
  box(500, 0, 500);

  // Robot
  noStroke();
  fill(255, 255, 0, 128);

  // head
  pushMatrix();
  translate(0, -245, 0);
  sphere(30);
  popMatrix();

  // body
  pushMatrix();
  translate(0, -165, 0);
  box(60, 90, 20);
  popMatrix();

  rightArm.show();
  
  leftArm.show();

  rightLeg.show();

  leftLeg.show();
}

