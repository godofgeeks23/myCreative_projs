class Block
{
  float x,y,w,speed=3;
  Block(float tx, float ty, float tw)
  {
    x = tx; y = ty; w = tw;
  }
  void display()
  {
    fill(255);
    rect(x,y,w,w);
  }
  void moveLeft()
  {
    x-=speed;
  }
  void moveRight()
  {
    x+=speed;
  }
  void moveUp()
  {
    y-=speed;
  }
  void moveDown()
  {
    y+=speed;
  }
}