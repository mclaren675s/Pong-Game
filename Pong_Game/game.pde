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
  if (d >= ballx/2 + leftx/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }


  //right paddle
  if (d >= ballx/2 + rightx/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  //top wall
  
  //if (bally >= bally/2) {
  //  vy = vy * -1;
 // }
  //bottom wall

















}/////////////////////////////////////////////////////////////////////

  


void gameClicks() {
}
