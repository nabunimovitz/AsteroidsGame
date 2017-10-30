class Spaceship extends Floater  
{   
	public Spaceship()
  	{
  		corners = 4;
  		xCorners = new int[corners];
  		yCorners = new int[corners];
  		xCorners[0] = -10;
  		yCorners[0] = 10;
  		xCorners[1] = -5;
  		yCorners[1] = 0;
  		xCorners[2] = -10;
  		yCorners[2] = -10;
  		xCorners[3] = 15;
  		yCorners[3] = 0;

  		myColor = 255;
  		myCenterX = 250;
  		myCenterY = 250;
  		myDirectionX = 0;
  		myDirectionY = 0;
  		myPointDirection = 0;

  		rockets=false;
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

  	private boolean rockets;
  	public void rockets()
  	{
  		rockets = !rockets;
  	}

	public void show ()  //Draws the floater at the current position  
  	{             
    	fill(myColor);   
    	stroke(myColor);    
    
    	//translate the (x,y) center of the ship to the correct position
    	translate((float)myCenterX, (float)myCenterY);

   		//convert degrees to radians for rotate()     
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    	//rotate so that the polygon will be drawn in the correct direction
    	rotate(dRadians);
    
   		//draw the polygon
    	beginShape();
    	for (int nI = 0; nI < corners; nI++)
    	{
    	  vertex(xCorners[nI], yCorners[nI]);
   		}
   		endShape(CLOSE);

   		if(rockets == true)
   		{
   			line(-22, 0, -9, 0);
   			line(-18, 3, -11, 3);
   			line(-18, -3, -11, -3);
   		}

    	//"unrotate" and "untranslate" in reverse order
    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
  	}   
}
