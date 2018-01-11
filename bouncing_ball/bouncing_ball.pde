float x = 100;
float y = 100;

float xspeed = 1;
float yspeed = 3.3;

void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  background(255);

  x += xspeed;
  y += yspeed;
  
  if ((x > width) || (x <= 0)) {
    xspeed *= -1;
  }
  if ((y > height) || (y <= 0)) {
    yspeed *= -1;
  }
  
  stroke(0);
  fill(175);
  ellipse(x, y, 16, 16);
  
}