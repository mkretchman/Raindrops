class GameOver {
  boolean run;

  GameOver() {
    run = true;
  } 
  void ender() {
   //Sets run to false to stop game.
    run= false;
    //Clears all raindrops in array list.
    raindrops.clear();
    background(125, 200, 255);
    if (mousePressed) {
      m=0;
      c=0;
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
    textSize(20);
    text("CLICK TO RESTART", 250, 450);
  }
}

