class Bone {
  PVector pos;
  PVector dim;
  PVector rot;

  Bone(float px, float py, float pz, float dx, float dy, float dz, float rx, float ry, float rz) {
    pos = new PVector(px, py, pz);
    dim = new PVector(dx, dy, dz);
    rot = new PVector(rx, ry, rz);
  }

  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    rotateX(rot.x);
    rotateY(rot.y);
    rotateZ(rot.z);
    translate(0 , dim.y/2 , 0);
    box(dim.x, dim.y, dim.z);
    popMatrix();
  }
}
