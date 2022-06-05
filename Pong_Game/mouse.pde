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
