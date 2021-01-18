class Bubble
{
  int x,y,r,speed;          //Declared inside as each bubble has it's own x,y,r.
  
  Bubble()                  //Contructor. Used to initialize the data by default, if not initialized by the user
  {
    x = width/2;
    y = height;
    r=20;
    speed = 2;
  }
  
  void display()
  {
    fill(0,0,200);
    ellipse(x,y,r,r);
  }
  void ascend()
  {
    y = y-speed;
  }
  void top()
  {
    if(y<=0)
    {
      speed*=-1;
    }
  }
  int in(int m, int n)
  {
    if(dist(x,y,m,n)<=r/2)
    {
      return 1;
    }
    else
    {
      return 0;
    }
  }
  void highlight()
  {
    fill(0,0,100);
    ellipse(x,y,r,r);
  }
  void pop()
  {
    r=0;
  }
}