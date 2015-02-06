class Bone {
  PVector pos; // position of node
  PVector dim; // dimension size
  PVector rot; // rotation
  Bone child;  // lower arm / leg
  float swAmp = 0;
  float swOrg = 0;
  float swPitch = 1.0;

  // constractor
  Bone(float px, float py, float pz, float dx, float dy, float dz, float rx, float ry, float rz) {
    pos = new PVector(px, py, pz);
    dim = new PVector(dx, dy, dz);
    rot = new PVector(rx, ry, rz);
  }

  // display
  void show() {

    rot.x = swOrg + sin(PI * 2 * millis() / 1000.0 * swPitch) * swAmp;    
    
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
}
