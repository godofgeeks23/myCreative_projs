int x;
void setup()
{
  size(660,460);
  x = 0;
}

void draw()
{
  print("\ni am running...");
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
}