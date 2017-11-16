//your variable declarations here
Spaceship ship = new Spaceship();
Stars [] stars;
//Asteroid [] asteroids;
ArrayList <Asteroid> asteroids;

//Bullet test = new Bullet(ship);
ArrayList <Bullet> bullets;

public void setup() 
{
 	size(500,500);
 	stars = new Stars[100];
 	for(int i=0; i<stars.length; i++)
 	{
 		stars[i] = new Stars();
 	}

 	asteroids = new ArrayList<Asteroid>();
 	for(int nI=0; nI<8; nI++)
 	{
 		Asteroid asteroidOne = new Asteroid();
 		asteroids.add(asteroidOne);
 	}

 	bullets = new ArrayList<Bullet>(); //on step 6
 	for(int i=0; i<100; i++)
 	{
 		//Bullet bulletOne = new Bullet(ship);
 		//bullets.add(bulletOne);
 	}
}
public void draw() 
{ 
  	background(0);
  	ship.show();
  	ship.move();

  	//test.show();
  	//test.move();
  	
  	for(int i=0; i<stars.length; i++)
  	{
  		stars[i].show();
  	}

  	for(int nI=0; nI<asteroids.size(); nI++)
  	{
  		asteroids.get(nI).show();
  		if(dist(asteroids.get(nI).getX(), asteroids.get(nI).getY(), ship.getX(), ship.getY()) <20)
  			asteroids.remove(nI);
  		else
  			asteroids.get(nI).move();
  	}

  	for(int i=0; i<bullets.size(); i++)
  	{
  		bullets.get(i).show();
		bullets.get(i).move();
  	}

  	/*for(int i=0; i<bullets.size(); i++)
  	{
  		if(dist(bullets.get(i).getX(), bullets.get(i).getY(), asteroids.getX(), asteroids.getY())<5)
  			bullets.remove(i);
  			asteroids.remove(nI);
  		else 
  		{

  		}
  	}*/

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
	if(key == 'w') //shoot
	{
		Bullet bulletOne = new Bullet(ship);
		bullets.add(bulletOne);
	}
}
public void keyReleased()
{
	if(key == 's')
	{
		ship.rocketsOn();
	}
}

