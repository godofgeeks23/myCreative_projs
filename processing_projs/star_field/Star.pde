class Star
{
  float x,y,radius=3,far=1,till,angle,speed,alpha=255;
  Star()
  {
    x = (mouseX)+20*cos(radians(angle));
    y = (mouseY)+20*sin(radians(angle));
    till = dist(x,y,width,height);
    far=0;
    angle = random(360);
    speed = random(8,16);
  }
  void show()
  {
    fill(255,alpha);
    ellipse(x,y,radius,radius);
  }
  void move()
  {
    far = dist(width/2,height/2,x,y);
    if(far>2*till)
    {
      x = (mouseX)+20*cos(radians(angle));
      y = (mouseY)+20*sin(radians(angle));
    }
    else
    {
      x = x+speed*cos(radians(angle));
      y = y+speed*sin(radians(angle));
    }
  }
  void incrRadius()
  {
    if(far>2*till)
    {
      radius = 3;
    }
    else
    {
      radius = radius+1/2;
    }
  }
  void changeAlpha()
  {
    if(far>2*till)
    {
      alpha = 100;
    }
    else
    {
      alpha-=10;
    }
  }
}