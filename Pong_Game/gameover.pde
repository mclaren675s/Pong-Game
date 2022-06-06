void gameover() {
  textSize(72);
  if (leftscore > rightscore) {
    
    background(red);
    fill(black);
    text("RED WON!", 270, height/2);
    
  } else {
    background(blue);
    fill(black);
    text("BLUE WON!", 233, height/2);
    
  }
  //guide
  //fill(black);
  //line(400,0, 400, 600);
}

void gameoverClicks() {
  //return to menu
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
    mode = INTRO;
    leftscore = 0;
    rightscore = 0;
  }
}
    
