int side=2,run;

void setup()
{
  size(600,500);
  background(201);
}

void draw()
{
  while(run!=1)
  {
    for(int x=0;x<=width;x+=side)
    {
      for(int y=0;y<=height;y+=side)
      {
        fill(random(255));
        rect(x,y,side,side);
      }
      run=1;
    }
  }
}