Spaceship spaceship;
Star[] stars;

public void setup() {
  size(500, 500);
  spaceship = new Spaceship();
  stars = new Star[1000]; 
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);


  for (int i=0; i<stars.length; i++) {
    stars[i].show();
  }


  spaceship.move();
  spaceship.show();
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

