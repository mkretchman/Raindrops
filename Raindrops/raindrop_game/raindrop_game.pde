ArrayList<snowflake> snowflakes = new ArrayList<snowflake>();
int rh=50;
int rw=50;
int old;
int cur;
void setup() {
  size(500, 500);
  noStroke();
  for (int i = 0; i<500; i++) {
    snowflakes.add(new snowflake());
  }
  old=0;
}

void draw() {
  cur=millis();
  background(0);
  rectMode(CENTER);
  rect(mouseX, mouseY, rw, rh);
  if (cur-old >= 3000) {
    old=cur;
    snowflakes.add( new snowflake());
   
  }
  for (int i = snowflakes.size()-1; i >= 0; i--) {
    snowflake b = snowflakes.get(i);
    b.show();
    b.fall();
    
    if (b.loc.y > mouseY-rh/2 && b.loc.y < mouseY+rh/2 && b.loc.x >mouseX-rw/2 && b.loc.x < mouseX+rw/2 && b.loc.x >mouseX-rw) {
      snowflakes.remove(i);
    }
  }
}

