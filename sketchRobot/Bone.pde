class Bone {
  PVector pos; // position of node
  PVector dim; // dimension size
  PVector rot; // rotation
  Bone child;  // lower arm / leg
  PVector swAmp = new PVector();
  PVector swOrg = new PVector();
  PVector swPitch = new PVector();

  // constractor
  Bone(float px, float py, float pz, float dx, float dy, float dz, float rx, float ry, float rz) {
    pos = new PVector(px, py, pz);
    dim = new PVector(dx, dy, dz);
    rot = new PVector(rx, ry, rz);
  }

  // display
  void show() {

    rot.x = swOrg.x + sin(PI * 2 * millis() / 1000.0 * swPitch.x) * swAmp.x;
    rot.y = swOrg.y + sin(PI * 2 * millis() / 1000.0 * swPitch.y) * swAmp.y;
    rot.z = swOrg.z + sin(PI * 2 * millis() / 1000.0 * swPitch.z) * swAmp.z;
    
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
