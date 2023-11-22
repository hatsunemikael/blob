class Drop {
  float x = random(width);
  float y = random(-200,-100);
  float yspeed = random(4, 10);
  float len = random(8, 15);
  
  void fall() {
    y = y + yspeed;
    
    if (y > height) {
      y = random(-200,-100);
    }
  }
  void show() {
    stroke(0, 0, 255);
    line(x,y,x,y+len);
  }
}
