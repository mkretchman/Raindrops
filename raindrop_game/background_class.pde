class Background{
   int x;
    int y;
    
  Background() {
    x=0;
    y=0;   
  }
  
  void bshow(){
    background(200,200,x);
    if(x<255){
     x+=20; 
    }
    if(x>255){
     x-=20; 
    }
  }
  
}


