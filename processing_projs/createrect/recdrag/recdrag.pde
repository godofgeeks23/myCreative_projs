int x,y,w,h;

void setup()
{
  size(640,300);
}

void draw()
{
  background(20);
  rect(x,y,w,h);
}
void mousePressed()
{
  x=mouseX;
  y=mouseY;
}

void mouseDragged()
{
  w=mouseX-x;
  h=mouseY-y;
}

void mouseReleased()
{
  x=y=w=h=0;
}