
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
  
  boolean follow_the_mouse(float random) {
    return random < 0.5;  
  }
  
  void step() {
    float random = random(1);
    if (follow_the_mouse(random)) {    
      int x_direction = (mouseX - x);
      int y_direction = (mouseY - y);
      
      if (x_direction != 0) {
        x_direction /= abs(x_direction);
      } 
      if (y_direction != 0) {
        y_direction /= abs(y_direction);
      }
      
      x += x_direction;
      y += y_direction;
    } else {
      x += int(random(-2, 2));
      y += int(random(-2, 2));
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
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