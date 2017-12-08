//your variable declarations here
Spaceship ship = new Spaceship();
Stars [] stars;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets;

ArrayList <Lives> points;
//Lives test = new Lives(50,50);

public void setup() 
{
 	size(500,500);
 	stars = new Stars[200];
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

 	bullets = new ArrayList<Bullet>();

 	points = new ArrayList<Lives>();
 	Lives pointOne= new Lives(25,25);
 	points.add(pointOne);

 	Lives pointTwo = new Lives(50,25);
 	points.add(pointTwo);

 	Lives pointThree = new Lives(75,25);
 	points.add(pointThree);

}
public void draw() 
{ 
  	background(0);
  	ship.show();
  	ship.move();
  	
  	//test.show();

  	for(int i=0; i<stars.length; i++)
  	{
  		stars[i].show();
  	}

  	for(int nI=0; nI<asteroids.size(); nI++)
  	{
  		asteroids.get(nI).show();
  		if(dist(asteroids.get(nI).getX(), asteroids.get(nI).getY(), ship.getX(), ship.getY()) <20)
  			{
  				asteroids.remove(nI);
  				if(!(points.size() == 0))
  					points.remove(0);
  			}
  		else
  			asteroids.get(nI).move();
  	}

  	for(int i=0; i<bullets.size(); i++)
  	{
  		bullets.get(i).show();
		bullets.get(i).move();

		for(int n=0; n<asteroids.size(); n++)
			if(dist(bullets.get(i).getX(), bullets.get(i).getY(), asteroids.get(n).getX(), asteroids.get(n).getY())<7)
			{
				asteroids.remove(n);
				bullets.remove(i);
				break;
			}
  	}

  	for(int i=0; i<points.size(); i++)
  	{
  		points.get(i).show();
  	}

  	if(points.size()==0)
  	{
  		//ellipse(250,250,250,250);
  		fill(0);
  		stroke(255,0,0);
  		rect(125,125,250,250);
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

