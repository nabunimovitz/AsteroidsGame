class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -7;
		yCorners[0] = 0;
		xCorners[1] = -2; 
		yCorners[1] = -10;
		xCorners[2] = 8;
		yCorners[2] = -5;
		xCorners[3] = 8;
		yCorners[3] = 5;
		xCorners[4] = -2;
		yCorners[4] = 10;

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