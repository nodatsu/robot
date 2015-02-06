class WalkingRobot extends Robot {

  WalkingRobot(float px, float py, float pz) {
    super(px, py, pz);
  }

  // update
  void update() {
    setAction();
    move();
    
    super.update();
  }

  // move method
  void move() {
    theta += 0.005;
    pos.x += vel * sin(theta);
    pos.z += vel * cos(theta);
  }
  
  // set action
  void setAction() {
    float pitch;
    float amp;
    
    pitch = sqrt(vel * scale) * 1.0;
    amp = sqrt(vel * scale) * PI / 4;

    rightArm.swAmp.x         =  amp;
    rightArm.swPitch.x       =  pitch;
    rightArm.child.swAmp.x   =  amp;
    rightArm.child.swOrg.x   =  amp;
    rightArm.child.swPitch.x =  pitch;
    leftArm.swAmp.x          = -amp;
    leftArm.swPitch.x        =  pitch;
    leftArm.child.swAmp.x    = -amp;
    leftArm.child.swOrg.x    =  amp;
    leftArm.child.swPitch.x  =  pitch;
    rightLeg.swAmp.x         = -amp;
    rightLeg.swPitch.x       =  pitch;
    rightLeg.child.swAmp.x   = -amp;
    rightLeg.child.swOrg.x   = -amp;
    rightLeg.child.swPitch.x =  pitch;
    leftLeg.swAmp.x          =  amp;
    leftLeg.swPitch.x        =  pitch;
    leftLeg.child.swAmp.x    =  amp;
    leftLeg.child.swOrg.x    = -amp;
    leftLeg.child.swPitch.x  =  pitch;
  }
}
