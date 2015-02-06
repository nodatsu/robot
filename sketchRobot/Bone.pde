class Bone {
  PVector pos;
  PVector dim;
  PVector rot;
  float swAmp;
  float swOrigin;
  float swPitch;
  Bone child;

  Bone(float px, float py, float pz, float dx, float dy, float dz, float rx, float ry, float rz) {
    pos = new PVector(px, py, pz);
    dim = new PVector(dx, dy, dz);
    rot = new PVector(rx, ry, rz);
    swAmp = 0;
  }

  void show() {
    swing();
    
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    rotateX(rot.x);
    rotateY(rot.y);
    rotateZ(rot.z);
    translate(0, dim.y / 2, 0);
    box(dim.x, dim.y, dim.z);

    if (child != null) {
      translate(0, dim.y / 2, 0);
      child.show();
    }

    popMatrix();
  }
  
  void swing() {
    rot.x = swOrigin + sin(millis() / 1000.0 * swPitch) * swAmp;
  }
  
  void setSwing(float amp, float org, float pit) {
    swAmp = amp;
    swOrigin = org;
    swPitch = pit;
  }
}
