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

    rightArm.swAmp         =  amp;
    rightArm.swPitch       =  pitch;
    rightArm.child.swAmp   =  amp;
    rightArm.child.swOrg   =  amp;
    rightArm.child.swPitch =  pitch;
    leftArm.swAmp          = -amp;
    leftArm.swPitch        =  pitch;
    leftArm.child.swAmp    = -amp;
    leftArm.child.swOrg    =  amp;
    leftArm.child.swPitch  =  pitch;
    rightLeg.swAmp         = -amp;
    rightLeg.swPitch       =  pitch;
    rightLeg.child.swAmp   = -amp;
    rightLeg.child.swOrg   = -amp;
    rightLeg.child.swPitch =  pitch;
    leftLeg.swAmp          =  amp;
    leftLeg.swPitch        =  pitch;
    leftLeg.child.swAmp    =  amp;
    leftLeg.child.swOrg    = -amp;
    leftLeg.child.swPitch  =  pitch;
  }
}
