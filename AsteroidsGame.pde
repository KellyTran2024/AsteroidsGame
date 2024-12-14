Spaceship spaceship;
Star[] stars;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

public void setup() {
  size(500, 500);
  spaceship = new Spaceship();
  stars = new Star[1000]; 
  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();

  for (int i = 0; i < 10 ; i++) {
    asteroids.add(new Asteroid());
  }
}


  }
}

public void draw() {
  background(0);


  for (int i=0; i<stars.length; i++) {
    stars[i].show();
  }


  spaceship.move();
  spaceship.show();
  for(int i = 0; i < asteroids.size(); i++){

     Asteroid asteroid = asteroids.get(i);
    asteroid.move();
    asteroid.show();
float distance = dist((float)spaceship.myCenterX, (float)spaceship.myCenterY, (float)asteroid.myCenterX, (float)asteroid.myCenterY);
if (distance < 30) { 
asteroids.remove(i);
}
  } 
  
}

}

public void keyPressed() {
  if (key == 'a' || key == 'A') {
    spaceship.turn(-5);
  } else if (key == 'd' || key == 'D') {
    spaceship.turn(5);
  } else if (key == 'w' || key == 'W') {
    spaceship.accelerate(0.1);
  } else if (key == 's' || key == 'S') {
    spaceship.accelerate(-0.1);
  } else if (key == 'h' || key == 'H') { 
    spaceship.hyperspace();
  }
}

