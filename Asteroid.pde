class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -30;
		yCorners[0] = 0;
		xCorners[1] = -15; 
		yCorners[1] = -15;
		xCorners[2] = -8;
		yCorners[2] = -11;
		xCorners[3] = 15;
		yCorners[3] = -15;
		xCorners[4] = 23;
		yCorners[4] = 0;
		xCorners[5] = 15;
		yCorners[5] = 15;
		xCorners[6] = 0;
		yCorners[6] = 8;
		xCorners[7] = -15;
		yCorners[7] = 15;

		myColor = 255;
		myCenterX = (int)(Math.random()*500);
  		myCenterY = (int)(Math.random()*500);
  		myDirectionX = (int)((Math.random()*8)-4); 
  		myDirectionY = (int)((Math.random()*8)-4);
  		myPointDirection = (int)(Math.random()*360);

  		rotSpeed = (int)Math.random()*2-1 ;
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

  	public void move()
  	{
  		turn(rotSpeed);
  		super.move();
  	}
}