class Ball
{
  float x,y,u,v,a = 9.8,temp=0;
  float xcontrol = 2;
  Ball()
  {
    x = 0;
    y = 20;
    u = 0;
  }
  void display()
  {
    ellipse(x,y,20,20);
  }
  void change()
  {
    temp+=0.02;
    v = u+a*(temp);
    x+=xcontrol;
  }
  void move()
  {
    y+=v;
  }
  void checkEdges()
  {
    if(y>=height)
    {
      a = a*-1;
      u = v;
    }
    if(v==0)
    {
      a = a*-1;
    }
    if(y<=0)
    {
      a = a*-1;
    }
    if(x<=0 || x>=width)
    {
      xcontrol*=-1;
    }
  }
}