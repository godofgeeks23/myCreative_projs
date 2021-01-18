Circle[] circles;

void setup()
{
  size(600,560);
  circles = new Circle[3];
  circles[0] = new Circle(width/2,height/2,50);
  for(int i=1;i<3;i++)
  {
    circles[i] = new Circle(width/2+50*i,height/2+50*i,20/i);
  }
  circles[0].col = color(237,12,12);
  circles[1].col = color(12,36,237);
  circles[2].col = color(240,240,240);
}
void draw()
{
  background(0);
  fill(100,100);
  circles[0].display();
  for(int i=1;i<3;i++)
  {
    circles[i].display();
    circles[i].rotateAbout(circles[i-1],(circles[i].r+circles[i-1].r)+(100/i),i*3);
    
    println(dist(circles[2].x,circles[2].y,circles[1].x,circles[1].y));
  }
}