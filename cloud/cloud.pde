void setup() {
  size(640, 240);
  background(255);
}

void draw(){
  loadPixels();
  float xoff = 0.0;
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      noiseDetail(2,0.65);
      float brightr = map(noise(xoff,yoff), 0, 1, 80, 200);
      noiseDetail(12,0.65);
      float brightg = map(noise(xoff,yoff), 0, 1, 80, 200);
      noiseDetail(8,0.65);
      float brightb = map(noise(xoff,yoff), 0, 1, 80, 200);
      //float bright = random(255);
      pixels[x+y*width] = color(brightr, brightg, brightb);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  updatePixels();
}