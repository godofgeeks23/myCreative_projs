int x,y;
void setup()
{
  size(660,460);
  x = 0;
}

void draw()
{
  background(0);
  fill(101);
  x=0;
  while(x<width)
  {
    if(mouseX<1) 
    {
      x = x+1;
    }
    else
    {
      x = x+mouseX;
    }
    ellipse(x,height/2,20,20);
  }
  y=0;
  while(y<height)
  {
    if(mouseY<1) 
    {
      y = y+1;
    }
    else
    {
      y = y+mouseY;
    }
    ellipse(width/2,y,20,20);
  }
}