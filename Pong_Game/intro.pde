void intro() {
  background (black);

  //guides
  //line(400, 0, 400, 600);
  //line(0, 300, 800, 300);


  //title
  fill(red);
  stroke(blue);
  textSize(128);
  strokeWeight(6);
  text("PONG", 242, 200);
  fill(blue);
  text("PONG", 242-6, 200-6);
  fill(red);
  stroke(blue);
  textSize(30);

  //1player button
  fill(red);
  rect(125, 330, 200, 115);
  fill(black);
  text("1 Player", 175, 400);

  //2player button
  fill(red);
  rect(475, 330, 200, 115);
  fill(black);
  text("2 Player", 525, 400);
}

void introClicks() {
  //1 player
  if (mouseX > 125 && mouseX < 330 && mouseY > 200 && mouseY < 115) {
    mode = ONEPLAYER;
    leftscore = 0;
    rightscore = 0;
  }

  //2 player
  if (mouseX > 500 && mouseX < 700 && mouseY > 450 && mouseY < 550) {
    mode = TWOPLAYER;
    leftscore = 0;
    rightscore = 0;
  }
}
