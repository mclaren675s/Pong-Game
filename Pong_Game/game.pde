void game() {
  background(0);

  //draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;

  //ball
  circle(ballx, bally, balld);
  ballx = ballx + vx;
  bally = bally + vy;

  //collisions  
  //left paddle
  //initialize distance
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
  if (bally <= bally/2) {
    vy = vy * -1;
  }
 
  //bottom wall
 if (bally >= 550) {
    vy = vy * -1;
  }

}/////////////////////////////////////////////////////////////////////

void gameClicks() {
}
