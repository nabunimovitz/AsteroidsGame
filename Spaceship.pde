class Spaceship extends Floater  
{   
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
