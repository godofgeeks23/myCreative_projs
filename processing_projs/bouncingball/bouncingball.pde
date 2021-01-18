//conditionals programming

float cx,cy,deltax=1,deltay=1,speed=5,rad=50;
void setup()
{
  size(640,300);
  cy = height/2;
  cx = rad/2;
}

void draw()
{
  background(0);
  ellipse(cx,cy,rad,rad);
  cx = cx+(speed*(deltax));
  cy = cy+(speed*(deltay));
  if(cx>=width-(rad/2) || cx<=(rad/2))
  {
    deltax = -1*deltax;
  }
  if(cy>=height-(rad/2) || cy<=(rad/2))
  {
    deltay = -1*deltay;
  }
}