//for loop
void setup()
{
  size(600,500);
}

void draw()
{
  background(201);
  if(mouseX>1)
  {
    for(int i=0;i<=width;i=i+mouseX)
    {
      line(i,0,i,height);
    }
  }
  if(mouseY>1)
  {
    for(int i=0;i<height;i=i+mouseY)
    {
      line(0,i,width,i);
    }
  }
}