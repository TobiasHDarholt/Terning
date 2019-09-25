int xStart = 0; //startposition af x-koordinat på firkanter
int yStart = 0; //startposition af y-koordinat på firkanter
int b = 50; //bredde af firkant
int a = 1; //afstanden mellem firkanter
int firkantX = 20; //antal firkanter på x aksen
int firkantY = 10; //antal firkanter på y aksen
int ryst = 7; //ryster firkanterne

void setup() {
  size(750, 500);
}

void draw() {
  clear();
  for (int j = 0; j < firkantY; ++j) {
    int y = yStart + j*b  + j*a;
    for (int i=0; i<firkantX; ++i) {
      int x = xStart + i*b + i*a;
      int d = (int)random(-ryst, ryst);
      fill(20+(x + y)*0.25, 0, 0);
      rect(x+d, y+d, b, b);
    }
  }
}
