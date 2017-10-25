class Stars //note that this class does NOT extend Floater
{
  private int myColor;
  private double myX, myY;
  public Stars()
  {
  	myX = (double)(Math.random()*500);
  	myY = (double)(Math.random()*500);

  	myColor = (255);
  }
  public void show()
  {
  	fill(myColor);
  	ellipse((float)myX, (float)myY, 2,2);
  }
}
