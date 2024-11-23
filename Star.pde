class Star {
  private float myX, myY;
 private int size;

  public Star() {
    myX = (float) (Math.random() * 500);
    myY = (float) (Math.random() * 500);

  size = (int) (Math.random() * 3+ 1); 

  }

  public void show() {
   noStroke();
    fill(255,255,255);

    ellipse(myX, myY, size, size);
  }
}
