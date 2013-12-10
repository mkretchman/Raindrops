//Creates rectangle catcher class
class Rectangle {
//Introduces a PVector called loc.
  PVector loc;


  Rectangle() {
    //Defines the PVector loc.
    loc = new PVector(mouseX, mouseY);
  }

//Creates appear() function for the rectangle in the class.
  void appear() {
    
    
    //Sets loc to mouseX and mouseY coordinates.
    loc.set(mouseX, mouseY);
    //Sets color mode to HSB with values of width, 1, and 1 for hue, saturation, and brightness.
    colorMode(HSB,width,1,1);
    //Sets fill
    fill(mouseX,1,1);
    //Sets rectangle mode to center.
    rectMode(CENTER); 
    //Disolays rectangle at (loc.x,loc.y) with a height of rh and width of rw.
    rect(loc.x, loc.y, rw, rh);
  }
}

