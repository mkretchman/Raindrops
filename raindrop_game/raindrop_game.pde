//Comments will come immediately before the block or line of code that they describe.
//Introduces an array list of raindrops.
ArrayList<raindrop> raindrops = new ArrayList<raindrop>();

//Names what is assigned miscellaneous classes.
Rectangle R1;
GameOver G1;
timers timer;
Background back;
//Declares miscellaneous variables to define catcher dimensions, time variables, starting values, and booleans.
int rh=75;
int rw=75;
int c=0;
int m=0;
int gamelength=3;
int start=0;
boolean run=true;
boolean restart=true;

void setup() {
  back = new Background();
  //Establishes the various names for the clases as new members of the class.
  R1 = new Rectangle();
  G1 = new GameOver();
  timer = new timers();
  //Display Dimensions
  size(500, 500);
  //No Stroke
  noStroke();

  //Using a for loop this adds a new raindrop to the array list to begin the list.
  for (int i = 0; i<1; i++) {
    raindrops.add(new raindrop());
  }
}

void draw() {

  //Since start is defined as 0, this if statement will run in the begining to display start screen.
  if (start<=0) {
    //Sets text align to center.
    textAlign(CENTER);
    //Creates white background.
    back.bshow();
    //Sets fill to black for following text.
    fill(0);
    //Sets text size to a certain value and then displays certain text.
    textSize(40);
    text("CATCH THE RAIN!!!", 250, 100);
    //Sets text size to a certain value and then displays certain text.
    textSize(20);
    text("Press 'S' to START", 250, 200);
    //Sets text size to a certain value and then displays certain text.
    text("Press 'P' to Pause", 250, 300);
    //Sets text size to a certain value and then displays certain text.
    text("Pause for Score", 250, 400);
  }

  //Once a key is pressed, start will increase and no longer be zero, causing this loop to run.
  if (start > 0) {
    //Run is defined as true intially, so this will run at first.  Run can be made false by clicking the mouse.
    if (run) {
      //Text aligns from the corner.
      textAlign(CORNER);
      //Creates a constantly refreshing blue background.
      background(125, 200, 255);

      //Calls on the appear() function of the rectangle in the catcher class.
      R1.appear();

      //Tests to see if the test is true as defined by the timer class.  If it is true, the code will run.
      if (timer.count()) {

        //Adds a new raindrop to the array list.
        raindrops.add( new raindrop());

        //Using a for loop the array list of raindrops is cycled through and each one is called to show() and to fall()
        for (int i = raindrops.size()-1; i >= 0; i--) {
          raindrop b = raindrops.get(i);
          b.show();
          b.fall();
          //If the game is not over, catching will be allowed.
          if (m<gamelength) {
            //If the raindrop comes in contact with the catcher object, this test will prove to be true.
            if (b.loc.y-10> mouseY-rh/2 && b.loc.y-11 < mouseY+rh/2 && b.loc.x+6 >mouseX-rw/2 && b.loc.x-6 < mouseX+rw/2) {
              //Removes that particular raindrop from array list.
              raindrops.remove(i);
              //Adds one to the caught variable.
              c+=1;
            }
          }

          //If the raindrop falls below the height, this test will prove true.
          if (b.loc.y>height) {
            //Removes that particular raindrop from array list.
            raindrops.remove(i);
            //Adds one to the missed variable.
            m+=1;
          }
        }
        //Makes the following objects white.
        fill(255);
        //Sets text size to 20.
        textSize(20);
        //Displays certain text lines.
        text("CAUGHT:", 335, 475);
        text("MISSED:", 15, 475);
        text(c, 435, 475);
        text(m, 100, 475);
      }

      //Sets color mode to RGB with values of 255, 255, and 255 for red, green, and blue respectively.
      colorMode(RGB, 255, 255, 255);
      //Sets the fill to white for the following text.
      fill(255);

      //Displays certain text lines.
      text("CAUGHT:", 335, 475);
      text("MISSED:", 15, 475);
    }

    //If more than a certain number of raindrops are missed, this will prove true.
    if (m>gamelength) {
      //Runs GameOver class.
      G1.ender();
    }
  }
}




//If a key is pressed this will run once to begin the game.
void keyPressed() {
  //If the key is 's', this will run as true.
  if (key == 's') {
    //Adds one to the start variable.
    start+=1;
  }
  //If game has not started, this will be true.
  if (start>0) {
    //If the game has not ended, this will run as true.
    if (m<gamelength) {
      if (key == 'p') {
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
    }
  }
}

