class Drop {
  float x = random(width);
  float y = random(-500,-100);
  // dybde på dråber
  float z = random(0, 20);
  // forskellig længde på dråber ift dybde
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 5, 10);
  
  void fall() {
    // y koordinat + y hastighed
    y = y + yspeed;
    // hastighed af dråber
    float gravity = map(z, 0, 20, 0, 0.05);
    // y hastighed + tyngdekraft
    yspeed = yspeed + gravity;
    
    if (y > height) {
      // dråbe starter forfra
      y = random(-200,-100);
      yspeed = map(z, 0, 20, 5, 10);
    }
  }
  void show() {
    // størrelse af dråber, tæt på og længere væk, 
    Float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(100, 100, 155);
    line(x,y,x,y+len);
  }
}
