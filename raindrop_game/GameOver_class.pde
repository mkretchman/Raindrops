//Creates GameOver class.
class GameOver {
  //Introduces boolean run.
  boolean run;

  GameOver() {
    run = true;
  } 
  //Creates ender() function for the GameOver class.
  void ender() {
    //Sets run to false to stop game.
    run= false;
    //Clears all raindrops in array list.
    raindrops.clear();
    //Sets certain background.
    background(125, 200, 255);
    //If the 'r' key is pressed this will run as true.
    if (keyPressed && key == 'r') {
      //Assigns values to the following.
      m=0;
      c=0;
      pause=0;
      run=true;
    }
    //Aligns text to center.
    textAlign(CENTER);
    //Sets text size to 50.
    textSize(50);
    //Displays certain text lines.
    text("GAME OVER", 250, 250);
    text("SCORE:", 250, 300);
    text(c-m, 250, 340);
    //Sets text size to 20.
    textSize(20);
    //Displays text line.
    text("'R' TO RESTART", 250, 450);
  }
}

