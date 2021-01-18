class Circle
{
  float x,y,r,stop=1,angle=0;
  color col;
  Circle(float tx, float ty ,float tr)
  {
    x=tx;
    y=ty;
    r=tr;
  }
  void display()
  {
    fill(col);
    ellipse(x,y,2*r,2*r);
  }
  void rotateAbout(Circle c, float r, float speed)
  {
      angle+=speed;
      x = (c.x)+((r)*cos(radians(angle)));
      y = (c.y)+((r)*sin(radians(angle)));
      
      if(angle==360){ angle = 0; }
  }
}