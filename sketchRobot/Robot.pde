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
    setAction();
    move();
    
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

