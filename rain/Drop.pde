class Drop {
  float x = width/2;
  float y = 0;
  float yspeed = 1;
  
  void fall() {
    y = y + yspeed;
  }
  void show() {
    stroke(0, 0, 255);
    line(x,y,x,y+10);
  }
}
