// object position
float phi = 0.0;
float zoom = 1.0;
float shiftX = 0.0;
float shiftY = 0.0;

Robot roboA;
WalkingRobot roboB;
ByeRobot roboC;

void setup() {
  size(800, 600, P3D);
  
  roboA = new Robot(0, 0, 0);
  roboA.scale = 0.3;
  roboA.vel = 0.5;
  roboA.theta = 0.0;

  roboB = new WalkingRobot(100, 0, 0);
  roboB.scale = 0.3;
  roboB.vel = 0.5;
  roboB.theta = 0.0;

  roboC = new ByeRobot(-100, 0, 0);
  roboC.scale = 0.3;
  roboC.vel = 0.0;
  roboC.theta = 0.0;

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
  roboA.update();
  roboB.update();
  roboC.update();
}

