void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == TWOPLAYER) {
    TWOPLAYERClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(black);
  } else {
    stroke(white);
  }
}

void tactilesquare (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    stroke(white);
  } else {
    stroke(black);
  }
}
