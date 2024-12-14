public class Bullet extends Floater {
  
    public Bullet(Spaceship theShip) {
       
        myCenterX = theShip.myCenterX;
        myCenterY = theShip.myCenterY; 
        myXspeed = theShip.myXspeed;
        myYspeed = theShip.myYspeed;
        myPointDirection = theShip.myPointDirection;
        accelerate(6.0);
        corners = 0;
    }


    public void show() {
        fill(255, 0, 0); 
        noStroke();
        ellipse((float) myCenterX, (float) myCenterY, 10, 10); 
    }
}
