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
    
    float amp = PI / 8;
    float pit = 2.0;
    rightArm.setSwing(amp, 0, pit);
    rightArm.child.setSwing(amp, amp, pit);
    leftArm.setSwing(-amp, 0, pit);
    leftArm.child.setSwing(-amp, amp, pit);
    rightLeg.setSwing(-amp/2, 0, pit);
    rightLeg.child.setSwing(-amp/2, -amp/2, pit);
    leftLeg.setSwing(amp/2, 0, pit);
    leftLeg.child.setSwing(amp/2, -amp/2, pit);
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

