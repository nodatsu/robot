class RobotWalk extends Robot {

  RobotWalk(float px, float py, float pz) {
    super(px, py, pz);
  }

  void update() {  
    setSwing();
    move();
    
    super.update();
  }

  // move method
  void move() {
    theta += 0.005;
    pos.x += vel * sin(theta);
    pos.z += vel * cos(theta);
  }
  
  // set or tune swing
  void setSwing() {    
    // set swing
    //pitch = ??? //vel and scale function
    float amp = PI / 4 * sqrt(vel * scale);
    float pitch = sqrt(vel * scale);
    
    rightArm.swAmp         =  amp;
    rightArm.swPitch       = pitch;
    rightArm.child.swAmp   =  amp;
    rightArm.child.swOrg   =  amp;
    rightArm.child.swPitch = pitch;
    leftArm.swAmp          = -amp;
    leftArm.swPitch        = pitch;
    leftArm.child.swAmp    = -amp;
    leftArm.child.swOrg    =  amp;
    leftArm.child.swPitch  = pitch;
    rightLeg.swAmp         = -amp;
    rightLeg.swPitch       = pitch;
    rightLeg.child.swAmp   = -amp;
    rightLeg.child.swOrg   = -amp;
    rightLeg.child.swPitch = pitch;
    leftLeg.swAmp          =  amp;
    leftLeg.swPitch        = pitch;
    leftLeg.child.swAmp    =  amp;
    leftLeg.child.swOrg    = -amp;
    leftLeg.child.swPitch  = pitch;
  }
}
