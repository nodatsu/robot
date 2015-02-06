void mouseDragged() {
  if (mouseButton == LEFT) {
    shiftX += 1.0 * (mouseX - pmouseX);
    shiftY += 1.0 * (mouseY - pmouseY);
  }
  else {
    phi += 0.005 * (mouseX - pmouseX);
  }
}

void mouseWheel (MouseEvent ev) {
  zoom += ev.getCount() * -0.1;
}

