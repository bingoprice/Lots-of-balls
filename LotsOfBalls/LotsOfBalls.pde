//declare variables
float x, y, velX, velY, diam;
float i,j, velI, velJ, rad;
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  i = width;
  j = height;
  rad = 70;
  velI = random(-10,10);
  velJ = random(-10,10);
  
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(i,j,rad,rad);              // second ball

  //add velocity to position
  x += velX;
  y += velY;
  i += velI;
  j += velJ;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  if ( i + rad/2 >= width) {
    velI = -abs(velI);    //if the second ball hits the right wall, assign x velocity the negative version of itself
  } else if (i - rad/2 <= 0) {
    velI = abs(velI);     //if the second ball hits the left wall, assign x velocity the positive version of itself
  }
  if (j + rad/2 >= height) {
    velJ = -abs(velJ);
  } else if (j - rad/2 <= 0) {
    velJ = abs(velJ);
  }
  }