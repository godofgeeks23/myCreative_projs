void setup()
{
  size(640,640);
  background(20);
}

void draw()
{
  int res = (mouseX-width/2)*(mouseX-width/2)+(mouseY-height/2)*(mouseY-height/2);
  if(res<(100*100))
  {
    fill(200);
    ellipse(width/2,height/2,200,200);

  }
  else
  {
    fill(50);
    ellipse(width/2,height/2,200,200);
  }
}