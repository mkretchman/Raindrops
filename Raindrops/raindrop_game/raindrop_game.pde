//comments will come immediately before the block of code that they describe.
//Introduces an array list of raindrops.
ArrayList<raindrop> raindrops = new ArrayList<raindrop>();

//Names a rectangle from the catcher class
Rectangle R1;

//Declare miscellaneous variables to define catcher dimensions, time variables, starting values, and booleans.
int rh=50;
int rw=50;
int old=0;
int c=0;
int m=0;
int start=0;
int current;
boolean run=true;

void setup() {
  //Establishes R1 as a new rectangle from the catcher class as defined by the Rectangle() function.
  R1 = new Rectangle();

  //Display Dimensions
  size(500, 500);
  //No Stroke
  noStroke();

  //Using a for loop this adds five new raindrops to the array list.
  for (int i = 0; i<5; i++) {
    raindrops.add(new raindrop());
  }
}

void draw() {
  //Since start is defined as 0, this if statement will run.
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

  //Once a key is pressed, start will increase and no longer be zero, causing this loop to run.
  if (start > 0) {

    //Run is defined as true intially, so this will run at first.  Run can be made false by clicking the mouse.
    if (run) {
      //Text aligns from the corner
      textAlign(CORNER);
      //Creates a constantly refreshing blue background.
      background(125, 200, 255);
      //Makes the following objects white.
      fill(255);
      //Sets text size to 20.
      textSize(20);
      //Displays certain text lines
      text("CAUGHT:", 335, 475);
      text("MISSED:", 15, 475);
      text(c, 435, 475);
      text(m, 100, 475);

      //Calls on the appear() function of the rectangle in the catcher class.
      R1.appear();

      //Sets current to equal the elapsed time.
      current=millis();

      //Tests to see if current - old is greater or equal to 10.  If it is true, the code will run.
      if (current-old >= 10) {
        //Sets the old variable to the current variable to reset the timer.
        old=current;

        //Adds a new raindrop to the array list.
        raindrops.add( new raindrop());

        //Using a for loop the array list of raindrops is cycled through and each one is called to show() and to fall()
        for (int i = raindrops.size()-1; i >= 0; i--) {
          raindrop b = raindrops.get(i);
          b.show();
          b.fall();

          //If the raindrop comes in contact with the catcher object, this test will prove to be true.
          if (b.loc.y+11 > mouseY-rh/2 && b.loc.y-11 < mouseY+rh/2 && b.loc.x+6 >mouseX-rw/2 && b.loc.x-6 < mouseX+rw/2) {
            //Removes that particular raindrop from array list
            raindrops.remove(i);
            //Adds one to the caught variable
            c+=1;
          }
          
          //If the raindrop falls below the height, this test will prove true.
          if (b.loc.y>height) {
            //Removes that particular raindrop from array list
            raindrops.remove(i);
            //Adds one to the missed variable
            m+=1;
          }
        }
      }
      
      //Sets color mode to RGB with values of 255, 255, and 255 for red, green, and blue respectively.
      colorMode(RGB, 255, 255, 255);
      //Sets the fill to white for the following text
      fill(255);
      
      //Displays certain text lines.
      text("CAUGHT:", 335, 475);
      text("MISSED:", 15, 475);
    }
    
    //If more than a certain number of raindrops are missed, this will prove true.
    if (m>100) {
      //Sets run to false to stop game.
      run= false;
      
      //Aligns text to center.
      textAlign(CENTER);
      //Sets text size to 50.
      textSize(50);
      //Displays certain text lines.
      text("GAME OVER", 250, 250);
      text("SCORE:", 250, 300);
      text(c-m, 250, 340);
    }
  }
}

//If mouse if pressed this will run once.
void mousePressed() {
  //Sets run to !run to display the score temporarily.
  run=!run;
  
  //Sets text size to 45.
  textSize(45);
  //Sets rectangle mode to center.
  rectMode(CENTER);
  //Sets fill to black for the rectangle.
  fill(0);
  //Displays rectangle.
  rect(250, 235, width, 100);
  //Sets fill to white for following text.
  fill(255);
  //Displays certain text.
  text("SCORE:", 145, 250);
  text(c-m, 300, 250);
}

//If a key is pressed this will run once to begin the game.
void keyPressed() {
  //Adds one to the start variable.
  start+=1;
}

