class Rectangle {

  PVector loc;

  Rectangle() {
    loc = new PVector(mouseX, mouseY);
  }

  void appear() {
    rectMode(CENTER); 
    colorMode(HSB,width,1,1);
    loc.set(mouseX, mouseY);
    fill(mouseX,1,1);
    rect(loc.x, loc.y, rw, rh);
  }
}

