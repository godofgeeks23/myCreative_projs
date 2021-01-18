class Bubble
{
  float x,y,r,speed;          
  Bubble(int rad)                  //Contructor.
  {
    x = random(width/2-50,width/2+50);
    y = height;
    r=rad;
    speed = 1;
  }
  
  void display()
  {
    fill(0,0,200);
    ellipse(x,y,r,r);
  }
  void ascend()
  {
    x = x + random(-3,2);
    y = y-speed;
  }
  void top()
  {
    if(y<=0)
    {
      speed=0;
    }
  }
}