class snowflake {
  PVector loc, vel, acc;
  PImage flake;

  snowflake() {
    loc = new PVector(random(width), random(-1000, 0));
    vel = new PVector(0, 2);
    acc = new PVector(0, 0.01);
    flake = loadImage("picture.png");
  }

  void show() {
    imageMode(CENTER);        
    image(flake, loc.x, loc.y,12,25);
  }

  void fall() {
    loc.add(vel);
    if (loc.y >= 0) {
      vel.add(acc);
    }
  }
}
