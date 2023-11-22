Drop[] drops = new Drop[200];

void setup() {
  size(600, 400);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < drops.length; i++) {
  drops[i].fall();
  drops[i].show();
  }
}
