//Creates Background class.
class Background {
  //Intorduces variables.
  int x;
  int xspeed;


  Background() {
    x=0;
    xspeed=10;
  }
  //Creates bshow() function for the Bucket in the class.
  void bshow() {
    //Increases x by adding xspeed to x.
    x+=xspeed;
    //Sets background according to x.
    background(x, 200, x);
    //Following if statements reverse the oscillation of the background color by altering xspeed.
    if (x<0) {
      xspeed=-xspeed;
    }
    if (x>255) {
      xspeed=-xspeed;
    }
  }
}

