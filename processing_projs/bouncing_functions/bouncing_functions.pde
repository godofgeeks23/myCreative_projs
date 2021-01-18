//Object Oriented Programming 
//MODULARITY: For organizing programs in sections, creating functions, etc.
//REUSABILITY: reuse that code again in future

//Wrinting functions

float x=width/2,y=height/2,xspeed=2,yspeed=1;
void setup()
{
  size(640,500);
}

void draw()
{
  displayBall();
  moveBall();
  checkEdges();
}
void displayBall()
{
  background(255);
  stroke(0);
  fill(127);
  ellipse(x,y,32,32);
}
void moveBall()
{
  x = x+xspeed;
  y = y+yspeed;
}
void checkEdges()
{
  if(x+16>width || x-16<0)
  {
    xspeed = xspeed*-1;
  }
  if(y+16>height || y-16<0)
  {
    yspeed = yspeed*-1;
  }
}