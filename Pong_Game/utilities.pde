void tactilesquare (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(black);
  } else {
    stroke(blue);
  }
}
