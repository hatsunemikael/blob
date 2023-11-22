Drop d;

void setup() {
  size(400, 400);
  d = new Drop();
}

void draw() {
  background(0);
  d.fall();
  d.show();
}
