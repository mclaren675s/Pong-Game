//Pong Game
//Alex Chapman
//modeframework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; //target velocity
float d1, d2;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//color variables
color white = #FFFFFF;
color black = #000000;
color red = #ff1b6b;
color orange = #FF7300;
color yellow = #f4e409;
color green = #90FE00;
color blue = #45caff;
color purple = #8400FF;
color pink = #FF00A1;

void setup() { /////////////////////////////////////////
  size(800, 600);
  mode = GAME;
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100; 

  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;

  //initialize
  vx = random(-1,-1);
  vy = random(0);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
