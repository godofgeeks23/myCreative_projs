class Particle
{
  float x,y,r;
  color col = color(250,0,0);
  Particle()
  {
    r=random(20,50);
    x = random(width/2-r/2,width/2+r/2);
    y = random(height/2-r/2,height/2+r/2);
  }
  Particle(float rad)
  {
    r = rad;
    x = random(width/2-r/2,width/2+r/2);
    y = random(height/2-r/2,height/2+r/2);
  }
  Particle(float xt, float yt,float rad)
  {
    r = rad;
    x = xt;
    y = yt;
  }
  void display()
  {
    fill(col);
    ellipse(x,y,r,r);
  }
  boolean overlaps(Particle other)
  {
    if(dist(x,y,other.x,other.y)<(r/2+(other.r)/2))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}