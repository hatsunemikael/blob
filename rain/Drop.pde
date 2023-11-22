class Drop {
  float x = random(width);
  float y = random(-500,-50);
  float z = random(0, 20);
  float len = map(z, 0, 50, 10, 20);
  float yspeed = map(z, 0, 50, 1, 20);
  
  void fall() {
    y = y + yspeed;
    float gravity = map(z, 0, 50, 0, 0.05);
    yspeed = yspeed + gravity;
    
    if (y > height) {
      y = random(-200,-100);
      yspeed = map(z, 0, 20, 10, 20);
    }
  }
  void show() {
    Float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(100, 100, 155);
    line(x,y,x,y+len);
  }
}
