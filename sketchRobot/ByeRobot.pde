class ByeRobot extends Robot {

  ByeRobot(float px, float py, float pz) {
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
  }
  
  // set action
  void setAction() {    
    rightArm.swAmp.z         =  PI / 8;
    rightArm.swPitch.z       =  1.0;
    rightArm.swOrg.z         =  PI;
  }
}
