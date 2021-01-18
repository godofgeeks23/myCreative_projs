Block b1;
void setup()
{
  size(600,600);
  b1 = new Block(width/2,height/2,20);
}
void draw()
{
  background(0);
  b1.display();
  
  if(keyCode==UP)
  {
    b1.moveUp();
  }
  if(keyCode==DOWN)
  {
      b1.moveDown();
  }
  if(keyCode==RIGHT)
  {
      b1.moveRight();
  }
  if(keyCode==LEFT)
  {
      b1.moveLeft();
  }
  
}