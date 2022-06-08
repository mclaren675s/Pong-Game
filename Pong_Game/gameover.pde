void gameover() {
  textSize(72);
  textFont(retrowave);
  if (leftscore > rightscore) {

    background(red);
    fill(black);
    text("RED WON!", 218, height/2);
  } else {
    background(blue);
    fill(black);
    text("BLUE WON!", 170, height/2);
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

    leftx = 0;
    lefty = height/2;
    leftd = 200;

    rightx = width;
    righty = height/2;
    rightd = 200;


    ballx = width/2;
    bally = height/2;
    balld = 100;

    vx = random(-1, -1);
    vy = random(0);
  }
}
