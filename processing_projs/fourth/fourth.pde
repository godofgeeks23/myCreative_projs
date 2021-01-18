//using random function
//random(x) gives a random number between 0 to x
//random(x,y) gives a random number between x and y
//random gives a FLOATING POINT VALUE

float cx,cy;
void setup()
{
  size(640,300);
  cx = height/2;
  cy = width/2;
  background(50);
}

void draw()
{
  ellipse(cx,cy,50,50);
  cx = random(width);
  cy = random(height);
  fill(random(255),random(255),random(255));
}