void game() {
  background(0);

  //scoreboard
  textSize(50);
  fill(red);
  text(leftscore, width/4, 100);
  fill(blue);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;

  //draw paddles
  fill(red);
  circle(leftx, lefty, leftd);
  fill(blue);
  circle(rightx, righty, rightd);

  //move paddles
  //left paddle

  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  //right paddle
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    //AI
    if (ballx > 400) {
      if (bally < righty) {
        //above
        righty = righty - 5;
        
        
        
      } else {
        //below
        righty = righty + 5;
        
        
        
        
      }
    }
  }
  /*
   if the ball is on the right side {
   if ball is above the right paddle, move up
   if ball is below the right paddle, move down
   }
   */


  //restricting paddles
  //top
  if (lefty < 100 ) lefty = 100;
  if (righty < 100 ) righty = 100;
  //bottom
  if (lefty > 500 ) lefty = 500;
  if (righty > 500 ) righty = 500;

  //ball
  fill(black);
  stroke(white);
  strokeWeight(8);
  circle(ballx, bally, balld);

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vy = 0;
  }

  if (ballx > 800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vy = 0;
  }

  //collisions
  //left paddle
  //initialize distance
  strokeWeight(8);
  d1 = dist(leftx, lefty, ballx, bally);
  if (d1 <= balld/2 + leftd/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  //right paddle
  d2 = dist(rightx, righty, ballx, bally);
  if (d2 <= balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  //top wall
  if (bally <= 50) {
    vy = vy * -1;
  }

  //bottom wall
  if (bally >= 550) {
    vy = vy * -1;
  }

  //win
  if (leftscore >= 3) mode = GAMEOVER;
  if (rightscore >= 3) mode = GAMEOVER;
}/////////////////////////////////////////////////////////////////////

void gameClicks() {
}
