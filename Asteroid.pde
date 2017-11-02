class Asteroid extends Floater
{
	public Asteroid()
	{
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -15;
		yCorners[0] = 0;
		xCorners[1] = -10; 
		yCorners[1] = -10;
		xCorners[2] = 0;
		yCorners[2] = -5;
		xCorners[3] = 10;
		yCorners[3] = -10;
		xCorners[4] = 15;
		yCorners[4] = 0;
		xCorners[5] = 10;
		yCorners[5] = 10;
		xCorners[6] = 0;
		yCorners[6] = 5;
		xCorners[7] = -10;
		yCorners[7] = 10;

		myColor = 255;
		myCenterX = (int)(Math.random()*500);
  		myCenterY = (int)(Math.random()*500);
  		myDirectionX = (int)(Math.random()*360);
  		myDirectionY = (int)(Math.random()*360);
  		myPointDirection = (int)(Math.random()*360);
	}
	public void setX(int x){myCenterX=x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY=y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX=x;}
    public double getDirectionX(){return (double)myDirectionX;}
    public void setDirectionY(double y){myDirectionY=y;}
    public double getDirectionY(){return (double)myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection=degrees;}   
  	public double getPointDirection(){return (double)myPointDirection;} 
}