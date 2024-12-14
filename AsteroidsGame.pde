Spaceship spaceship;
Star[] stars;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;

public void setup() {
  size(500, 500);
  spaceship = new Spaceship();
  stars = new Star[1000]; 
  asteroids = new ArrayList<Asteroid>();
  bullets = new ArrayList<Bullet>();

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
}
  for (int i = 0; i < 10 ; i++) {
    asteroids.add(new Asteroid());
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

       for (int i = 0; i < bullets.size(); i++) {
        Bullet bullet = bullets.get(i);
        bullet.move();
        bullet.show();

      for (int j = 0; j < asteroids.size(); j++) {
      Asteroid asteroid = asteroids.get(j);
      float distance = dist((float) bullet.myCenterX, (float) bullet.myCenterY, (float) asteroid.myCenterX, (float) asteroid.myCenterY);

      if (distance < 20) {  
        asteroids.remove(j);  
        bullets.remove(i);   
        break;  
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

