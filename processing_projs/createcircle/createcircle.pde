//function dist(x1,y1,x2,y2) gives the distance between 2 points

int x,y,r;

void setup()
{
  size(640,640);
  x = width/2;
  y = height/2;
}

void draw()
{
  background(20);
  ellipse(x,y,dist(mouseX,mouseY,x,y),dist(mouseX,mouseY,x,y));
}