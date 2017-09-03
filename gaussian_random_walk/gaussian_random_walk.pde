
int EQUILIBRE = 3;
int SUD_EST = 4;
int BALADE = SUD_EST;

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    int stepx = int(randomGaussian());
    int stepy = int(randomGaussian());
    x += stepx;
    y += stepy;
  }
}

Walker w;

void setup(){
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}