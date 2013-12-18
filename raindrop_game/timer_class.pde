//Creates class for timer.
class timers{
  //Intorduces variable.
  int old;

  timers() {
    //Sets old to zero.
    old = 0;
  }

//Sets a boolean function as defined by the code inside.
  boolean count() {
    //Assigns t to be false.
    boolean t = false;
    //If the current time minus the old time is more than 10 milliseconds, this will be true and it will run.
    if (millis() - old >= 10)
    {
      //reset the counter to 0
      old = millis();
      //make the if statement run in the main code
      t = true;
    }
    //Return the value of t.
    return t;
  }
}
