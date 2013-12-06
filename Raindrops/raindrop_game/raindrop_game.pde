ArrayList<raindrop> raindrops = new ArrayList<raindrop>();
Rectangle R1;
int rh=50;
int rw=50;
int old;
int cur;
void setup() {
  R1 = new Rectangle();
  size(500, 500);
  noStroke();
  for (int i = 0; i<5; i++) {
    raindrops.add(new raindrop());
  }
  old=0;
}

void draw() {
  cur=millis();
  background(0);
  R1.appear();
//  rectMode(CENTER);
//  rect(mouseX, mouseY, rw, rh);
  if (cur-old >= 10) {
    old=cur;
    raindrops.add( new raindrop());

    for (int i = raindrops.size()-1; i >= 0; i--) {
      raindrop b = raindrops.get(i);
      b.show();
      b.fall();

      if (b.loc.y > mouseY-rh/2 && b.loc.y < mouseY+rh/2 && b.loc.x >mouseX-rw/2 && b.loc.x < mouseX+rw/2 && b.loc.x >mouseX-rw) {
        raindrops.remove(i);
      }
    }
  }
}

