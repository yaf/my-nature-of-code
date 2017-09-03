void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  float x_location = randomGaussian();
  float random_green_colour = random(0, 255);
  float random_red_colour = random(0, 255);
  float random_blue_colour = random(0, 255);

  float sd = 60;
  float mean = width/2;
  x_location = ( x_location * sd ) + mean;

  color c = color(random_green_colour, random_red_colour, random_blue_colour);
  fill(c, 10);
  noStroke();
  ellipse(x_location, height/2, 16, 16);
}