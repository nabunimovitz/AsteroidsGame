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
		noStroke();
		fill(255,0,0);
		ellipse((float)myX, (float)myY,20,20); 
	}
}