class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
   
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed;
    myYspeed = theShip.myYspeed;
    myPointDirection = theShip.myPointDirection;
    myColor = color(255, 0, 0);  
    corners = 0;
    
  }

  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float) myCenterX, (float) myCenterY, 10, 10);
  }
}
