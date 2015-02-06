class Robot {
  Bone rightArm;
  Bone leftArm;
  Bone rightLeg;
  Bone leftLeg;

  Robot() {
    rightArm       = new Bone(  -30, -200,    0, 20, 60, 20, 0, 0, 0);
    rightArm.child = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
    leftArm        = new Bone(   30, -200,    0, 20, 60, 20, 0, 0, 0);
    leftArm.child  = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
    rightLeg       = new Bone(  -20, -120,    0, 20, 60, 20, 0, 0, 0);
    rightLeg.child = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
    leftLeg        = new Bone(   20, -120,    0, 20, 60, 20, 0, 0, 0);
    leftLeg.child  = new Bone(    0,    0,    0, 20, 60, 20, 0, 0, 0);
    
    float amp = 3.0;
    rightArm.setSwing(amp);
    rightArm.child.setSwing(amp);
    leftArm.setSwing(-amp);
    leftArm.child.setSwing(-amp);
    rightLeg.setSwing(-amp);
    rightLeg.child.setSwing(-amp);
    leftLeg.setSwing(amp);
    leftLeg.child.setSwing(amp);
  }

  void update() {
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
}

