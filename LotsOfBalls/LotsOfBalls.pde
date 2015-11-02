//declare array[0]s
//i[0]nt[] numbers;
//color[] c;
//float [] a;

//i[0]ni[0]ti[0]ali[0]zi[0]ng array[0]s
//numbers = new i[0]nt{10};
//c = new color [5];
//n = {35.6,41.7,2.0001};


//declari[0]ng and i[0]ni[0]ti[0]ali[0]zi[0]ng array[0]s
//i[0]nt[] = numbers = new i[0]nt [200];



//declare array[0]s
float[] x = new float [2];
float[] y = new float [2];
float[] i = new float [2];
float[] j = new float [2];
float[] velx = new float [2];
float[] vely = new float [2];
float[] veli = new float [2];
float[] velj = new float [2];
float [] diam = new float [2];
float [] rad = new float [2];
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables

  y[0] = height/2;
  diam[0] = 80;
  velx[0] = random(-5, 5);
  vely[0] = random(-5, 5);
  i[1] = width;
  j[1] = height;
  rad[1] = 70;
  veli[1] = random(-10,10);
  velj[1]= random(-10,10);
  
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(i[1],j[1],rad[1],rad[1]);              // second ball

  //add velocity to position
  x[0] += velx[0];
  y[0] += vely[0];
  i[1] += veli[1];
  j[1] += velj[1];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velx[0] = -abs(velx[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velx[0] = abs(velx[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    vely[0] = -abs(vely[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    vely[0] = abs(vely[0]);
  }
  if ( i[1] + rad[1]/2 >= width) {
    veli[1] = -abs(veli[1]);    //if the second ball hits the right wall, assign x velocity the negative version of itself
  } else if (i[1] - rad[1]/2 <= 0) {
  veli[1] = abs(veli[1]);      //if the ball hits the left wall, assign x velocity the positive version of itself
  }if (j[1] + rad[1]/2 >= height) {
    velj[1] = -abs(velj[1]);
  } else if (j[1] - rad[1]/2 <= 0) {
    velj[1] = abs(velj[1]);
  }
}