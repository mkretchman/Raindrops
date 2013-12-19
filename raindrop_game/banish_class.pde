//Creates GameOver class.
class Banish {
  //Introduces boolean run.
  boolean run;

  Banish() {
    run = true;
  } 
  //Creates ender() function for the GameOver class.
  void banish() {
    //Sets run to false to stop game.
    run= false;
    //Clears all raindrops in array list.
    raindrops.clear();
    //Sets certain background.
    background(255, 0, 0);  
    //Aligns text to center.
    textAlign(CENTER);
    //Sets text size to 75.
    textSize(75);
    //Sets white fill.
    fill(255);
    //Displays text line.
    text("Banishment", 250, 250);
    //Sets random fill.
    fill(random(255), random(255), random(255));
    //Displays text line at random locations.
    text("WHY???", random(width), random(height));
  }
}

