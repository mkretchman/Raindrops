ArrayList<raindrop> raindrops = new ArrayList<raindrop>();
Rectangle R1;
int rh=50;
int rw=50;
int old=0;
int c=0;
int m=0;
int start=0;
int current;
boolean run=true;
void setup() {
  R1 = new Rectangle();
  size(500, 500);
  noStroke();

  for (int i = 0; i<5; i++) {
    raindrops.add(new raindrop());
  }
}

void draw() {
  if (start<=0) {
    textAlign(CENTER);
    background(255);
    fill(0);
    textSize(40);
    text("CATCH THE RAIN", 250, 100);
    textSize(20);
    text("Press Any Key to START", 250, 200);
    textSize(20);
    text("Click to Pause", 250, 300);
    textSize(20);
    text("Click for Score", 250, 400);
  }

  if (start > 0) {
    if (run) {
      textAlign(CORNER);
      colorMode(RGB, 255, 255, 255);
      background(125, 200, 255);

      fill(255);
      textSize(20);
      current=millis();
      text("CAUGHT:", 335, 475);
      text("MISSED:", 15, 475);
      text(c, 435, 475);
      text(m, 100, 475);
      R1.appear();
      if (current-old >= 10) {
        old=current;
        raindrops.add( new raindrop());

        for (int i = raindrops.size()-1; i >= 0; i--) {
          raindrop b = raindrops.get(i);
          b.show();
          b.fall();

          if (b.loc.y+11 > mouseY-rh/2 && b.loc.y-11 < mouseY+rh/2 && b.loc.x+6 >mouseX-rw/2 && b.loc.x-6 < mouseX+rw/2) {
            raindrops.remove(i);
            c+=1;
          }

          if (b.loc.y>height) {
            m+=1;
            raindrops.remove(i);
          }
        }
      }
    }
  }
}

void mousePressed() {
  run=!run;
  textSize(45);
  rectMode(CENTER);
  fill(0);
  rect(250, 235, width, 100);
  fill(255);
  text("SCORE:", 145, 250);
  text(c-m, 300, 250);
}
void keyPressed() {
  start+=1;
}

