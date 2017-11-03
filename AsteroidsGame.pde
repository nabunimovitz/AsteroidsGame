//your variable declarations here
Spaceship ship = new Spaceship();
Stars [] stars;
public void setup() 
{
 	size(500,500);
 	stars = new Stars[100];
 	for(int i=0; i<stars.length; i++)
 	{
 		stars[i] = new Stars();
 	}
}
public void draw() 
{ 
  	background(0);
  	ship.show();
  	ship.move();
  	for(int i=0; i<stars.length; i++)
  	{
  		stars[i].show();
  	}
}
public void keyPressed()
{
	if(key == 'a') //turn left
	{
		ship.turn(-10);
	}
	if(key == 'd') //turn right
	{
		ship.turn(10);
	}
	if(key == 's') //accelerate
	{
		ship.accelerate(1);
		ship.rocketsOn();
	}
	if(key == 'h') //hyperspace
	{
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
		ship.setPointDirection((int)(Math.random()*360));
	} 
}
public void keyReleased()
{
	if(key == 's')
	{
		ship.rocketsOn();
	}
}

