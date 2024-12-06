
class Asteroid extends Floater {
  private double rotSpeed;
  
  
  public Asteroid() {
    corners = 6;
   xCorners = new int[] {-15, 11, 17, 10, -15, -13};
   yCorners = new int[] {-4, -4, 4, 14, 12, 4}; 
    myXspeed = Math.random() * 2 - 1;
    myYspeed = Math.random() * 2 - 1;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360;
    rotSpeed = (int) (Math.random() * 2) - 1;
    myColor = 128;
    
  }

  public int getX() {
    return (int) myCenterX;
  }

  public int getY() {
    return (int) myCenterY;
  }

  public void move() { 
 turn(rotSpeed);
    super.move();
  }
}

