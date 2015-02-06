class Robot {
  PVector pos;
  float scale;
  float vel;
  float theta;
  Bone rightArm;
  Bone leftArm;
  Bone rightLeg;
  Bone leftLeg;

  // constractor
  Robot(float px, float py, float pz) {
    pos = new PVector(px, py, pz);
    scale = 1.0;
    vel = 0.0;
    theta = 0.0;
    
    // create bones (position, size, rotate)
    rightArm       = new Bone(  -30, -200, 0, 20, 60, 20, 0, 0, 0);
    rightArm.child = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    leftArm        = new Bone(   30, -200, 0, 20, 60, 20, 0, 0, 0);
    leftArm.child  = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    rightLeg       = new Bone(  -20, -120, 0, 20, 60, 20, 0, 0, 0);
    rightLeg.child = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    leftLeg        = new Bone(   20, -120, 0, 20, 60, 20, 0, 0, 0);
    leftLeg.child  = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
  }

  // update method
  void update() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    scale(scale);
    rotateY(theta);
    
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
    
    popMatrix();
  }
}

