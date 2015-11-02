
//declare array[j]s
int balls = 1000;
float[] x = new float [1000];
float[] y = new float [balls];
float[] velx = new float [balls];
float[] vely = new float [balls];
float [] diam = new float [balls];
color [] c = new color [balls];

void setup() {
  int i = 0;                    //declare local variable 
  //set size of canvas
  size(800, 600);

  //initialize variables
  while ( i<balls){
  diam[i] = 30;
  x[i] = random(diam[i]/2,width-diam[i]/2);  
  y[i] = random(diam[i]/2, height-diam[i]/2);
  velx[i] = random(-5, 5);
  vely[i] = random(-5, 5);
  c[i]= color(random(255),random(255),random(255)); 
  i++;
  
}
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for(int j = 0; j < balls; j++) {
    //draw ball
    fill(c[j]);
    ellipse(x[j], y[j], diam[j], diam[j]);

    //add velocity to position
    x[j] += velx[j];
    y[j] += vely[j];

    //bounce ball if it hits walls
    if (x[j] + diam[j]/2 >= width) {
      velx[j] = -abs(velx[j]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[j] - diam[j]/2 <= 0) {
      velx[j] = abs(velx[j]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[j] + diam[j]/2 >= height) {
      vely[j] = -abs(vely[j]);
    } else if (y[j] - diam[j]/2 <= 0) {
      vely[j] = abs(vely[j]);
    }
  }
}