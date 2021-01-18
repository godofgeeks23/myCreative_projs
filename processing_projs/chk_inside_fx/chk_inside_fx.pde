int x,y,r=100;
void setup()
{
  size(640,640);
  background(20);
  x = width/2;
  y = height/2;
}

void draw()
{
  ellipse(x,y,2*r,2*r);
  if(insideCircle(x,y,r)==1)  {    fill(255,0,0);  }
  else                        {    fill(255);      }
}

int insideCircle(int x,int y, int r)
{
  int res = (mouseX-width/2)*(mouseX-width/2)+(mouseY-height/2)*(mouseY-height/2);
  if(res<(r*r))  {
    return 1;                // 1 for inside
  }
  else  {
    return 0;                // 0 for outside
  }
}