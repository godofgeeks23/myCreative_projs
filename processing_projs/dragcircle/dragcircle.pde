int x,y,r=100;
int dy,dx;
void setup()
{
  size(640,640);
  background(20);
  x = width/2;
  y = height/2;
}

void draw()
{
  background(50);
  ellipse(x,y,2*r,2*r);
  if(insideCircle(x,y,r)==1)  {    fill(255,0,0);  }
  else                        {    fill(255);      }
}

int insideCircle(int x,int y, int r)
{
  int res = (mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y);
  if(res<(r*r))  {
    return 1;                // 1 for inside
  }
  else  {
    return 0;                // 0 for outside
  }
}

void mousePressed()
{
  dx = mouseX-x;
  dy = mouseY-y;
}

void mouseDragged()
{
  if(insideCircle(x,y,r)==1)
  {
    x = mouseX-dx;
    y = mouseY-dy;
  }
}