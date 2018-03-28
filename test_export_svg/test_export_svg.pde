import processing.svg.*;



void setup() {
  size(400, 400);
  noLoop();
  background(220, 220, 220);
  beginRecord(SVG, "/home/yaf/filename.svg"); 
}

void draw() {
  for(int i = 0; i < 10; i++) {
    int rouge = int(random(250)) % 255;
    int vert = int(random(230)) % 255;
    int bleu = int(random(250)) % 255;
    color couleur_du_moment = color(rouge, vert, bleu);
    fill(couleur_du_moment);
    quad(int(random(width)), int(random(height)), int(random(width)), int(random(height)), int(random(130)), int(random(163)), int(random(180)), int(random(176)));
  }
  endRecord();
}
