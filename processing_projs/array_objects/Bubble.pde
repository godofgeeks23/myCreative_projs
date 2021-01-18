class Bubble
{
  float x,y,r,speed;          
  Bubble(int rad)                  //Contructor.
  {
    x = random(rad/2,width-rad/2);
    y = random(0,height-rad/2);
    r=rad;
    speed = random(1,3);
  }
  void display()
  {
    fill(0,0,250,100);
    ellipse(x,y,r,r);
  }
  void ascend()
  {
    x = x + random(-1,1);
    y = y-speed;
  }
  void top()
  {
    if(y+r<=0)
    {
      y=height+r;
    }
  }
}