void mouseDragged() {
  phi += 0.005 * (mouseX - pmouseX);
}

void mouseWheel (MouseEvent ev) {
  zoom += ev.getCount() * -0.1;
}

