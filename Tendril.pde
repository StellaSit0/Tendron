class Tendril{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private float myAngle;
  private float startX,startY,endX,endY;
  
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int x, int y){
    //your code here
    myAngle = theta;
    myNumSegments = len;
    myX=x;
    myY=y;
  }
  public void show(){
    startX = myX;
    startY = myY;
    
    for(int i=0;i<myNumSegments;i++){
      myAngle += (float)(Math.random()*0.4)-0.02;
      endX = startX + cos(myAngle) * SEG_LENGTH-2;
      endY = startY + sin(myAngle) * SEG_LENGTH-2;
      line(startX,startY,endX,endY);
      startX=endX;
      startY=endY;
    }
    if(myNumSegments >= 10){
        Cluster c = new Cluster((int)myNumSegments/5, (int)startX, (int)startY);
        c.show();
    }
  }
}
