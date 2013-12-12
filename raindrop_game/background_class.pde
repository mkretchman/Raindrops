class Background{
   int x;
    int xspeed;
    
  
    
  Background() {
    x=0;
    xspeed=10;   
  }
  
  void bshow(){
    x+=xspeed;
    background(x,200,x);
    if(x<0){
     xspeed=-xspeed; 
    }
    if(x>255){
     xspeed=-xspeed; 
    }
  }
  
}


