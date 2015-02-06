void mouseDragged() {
  if (mouseButton == RIGHT) {
    phi += 0.005 * (mouseX - pmouseX);
  }
  else {
    shiftX += mouseX - pmouseX; 
    shiftY += mouseY - pmouseY;
  }
}

void mouseWheel (MouseEvent ev) {
  zoom += ev.getCount() * -0.1;
}

