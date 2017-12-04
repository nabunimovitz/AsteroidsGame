class Lives
{
	private double myX, myY;
	public Lives(int x, int y)
	{
		myX=x;
		myY=y;
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)myX, (float)myY,50,50); 
	}
}