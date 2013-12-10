//Creates class for raindrops
class raindrop {
  //Introduces PVectors.
  PVector loc, vel, acc;
  //Introduces picture of rain.
  PImage rain;

  raindrop() {
    //Difines following PVectors.
    loc = new PVector(random(width), random(-1000, 0));
    vel = new PVector(0, 2);
    acc = new PVector(0, 0.0255);
    //Defines the PImage rain.
    rain = loadImage("picture.png");
  }

  //Creates show() function for the drop in the class.
  void show() {
    //Sets image mode to center.
    imageMode(CENTER);        
    //Displays image rain at (loc.x,loc.y) with a height of 25 and a width of 12.
    image(rain, loc.x, loc.y, 12, 25);
  }

  //Creates a fall() function for the drop in the class.
  void fall() {
    //Causes drop to move downward by adding velocity to location.
    loc.add(vel);

    //If loc.y is greater than zero, this will prove true.
    if (loc.y >= 0) {
      //Adds an acceleration to the velocity, causeing the drop to fall increasingly fast downwards.
      vel.add(acc);
    }
  }
}

