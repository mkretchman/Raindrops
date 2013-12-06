class Rectangle {
  
  PVector loc;
 
  Rectangle(){
    loc = new PVector(mouseX, mouseY);
  }
  
  void appear() {
    rectMode(CENTER); 
    loc.set(mouseX,mouseY);
    rect(loc.x, loc.y, rw, rh);
  }
  
}

