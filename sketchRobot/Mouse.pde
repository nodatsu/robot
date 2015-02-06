void mouseDragged() {
  if (mouseButton == LEFT) {
    wPhi += (mouseX - pmouseX) * 0.01;
  }
  else {
    wTheta += (mouseY - pmouseY) * 0.01;
  }
}

void mouseWheel(MouseEvent ev) {
  wScale += ev.getAmount() * -0.1;
}

