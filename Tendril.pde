public class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    
      if (myNumSegments >= 10) {
            stroke(140, 70, 20);
            strokeWeight(1.5);
        } else if (myNumSegments >= 5) {
            stroke(0, 100, 0);
            strokeWeight(1);
        } else {
          strokeWeight(.5);
            stroke(0, 200, 0); 
        }
        
       float startX = myX;        
       float startY = myY;     
       float endX = startX;
      float endY = startY;
    for(int i =0; i <myNumSegments; i++) {
       myAngle += Math.random() * 0.4 - 0.2;
      endX = startX + (float)(Math.cos(myAngle)*SEG_LENGTH);
      endY = startY + (float)(Math.sin(myAngle)*SEG_LENGTH);
     
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
    
  }


       if (myNumSegments >= 3) {
      new Cluster((int)myNumSegments/2, (int)startX, (int)startY); // smaller branches
    }
}
}
