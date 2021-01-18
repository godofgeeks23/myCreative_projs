Particle p1,p2;

void setup()
{
  size(400,340);
  p1 = new Particle(70);
  p2 = new Particle(100);
}

void draw()
{
  background(255);
  p1.display();
  p2.display();
  p2.x = mouseX;
  p2.y = mouseY;
  if(p2.overlaps(p1)==true)
  {
    p1.col = color(250,0,0,100);
    p2.col = color(0,250,0,100);
  }
  else
  {
    p1.col = color(250,0,0);
    p2.col = color(0,250,0);    
  }
}