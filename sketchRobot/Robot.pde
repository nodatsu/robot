class Robot {
  PVector pos;
  float scale;
  float vel;
  float theta;
  float pitch;
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
    pitch = 1.0;
    
    // create bones (position, size, rotate)
    rightArm       = new Bone(  -30, -200, 0, 20, 60, 20, 0, 0, 0);
    rightArm.child = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    leftArm        = new Bone(   30, -200, 0, 20, 60, 20, 0, 0, 0);
    leftArm.child  = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    rightLeg       = new Bone(  -20, -120, 0, 20, 60, 20, 0, 0, 0);
    rightLeg.child = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);
    leftLeg        = new Bone(   20, -120, 0, 20, 60, 20, 0, 0, 0);
    leftLeg.child  = new Bone(    0, 0, 0, 20, 60, 20, 0, 0, 0);

    // set swing
    //pitch = ??? //vel and scale function
    rightArm.swAmp         =  PI / 4;
    rightArm.swPitch       = pitch;
    rightArm.child.swAmp   =  PI / 4;
    rightArm.child.swOrg   =  PI / 4;
    rightArm.child.swPitch = pitch;
    leftArm.swAmp          = -PI / 4;
    leftArm.swPitch        = pitch;
    leftArm.child.swAmp    = -PI / 4;
    leftArm.child.swOrg    =  PI / 4;
    leftArm.child.swPitch  = pitch;
    rightLeg.swAmp         = -PI / 4;
    rightLeg.swPitch       = pitch;
    rightLeg.child.swAmp   = -PI / 4;
    rightLeg.child.swOrg   = -PI / 4;
    rightLeg.child.swPitch = pitch;
    leftLeg.swAmp          =  PI / 4;
    leftLeg.swPitch        = pitch;
    leftLeg.child.swAmp    =  PI / 4;
    leftLeg.child.swOrg    = -PI / 4;
    leftLeg.child.swPitch  = pitch;
  }

  // update method
  void update() {
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
}

