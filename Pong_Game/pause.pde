void pause() {
  textFont(retrowave);
  fill(white);
  textSize(140);
  text("PAUSE", 174, 300);
  
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 50, 50) < 75) {
    mode = GAME;
  }
  
}
