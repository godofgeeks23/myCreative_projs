int bx,by,bf,bd,bb,bu,r;
int[][] bricks = {{100,100,150,120},{150,120,200,140},{200,140,250,160}};
int speedx,speedy;

void setup()
{
  size(240,200);
  bx = 50;
  by = 50;
  r = 30;
  bf = bx+r/2;
  bb = bx-r/2;
  bu = by-r/2;
  bd = by+r/2;
  speedx = 2;
  speedy = 1;
}
void draw()
{
  background(250);
  displayBall();
  displayBricks();
  moveBall();
  insideFrame();

}
void displayBall()
{
  fill(50);
  ellipse(bx,by,r,r);
}
void displayBricks()
{
  for(int i=0;i<=2;i++)
  {
    rect(bricks[i][0],bricks[i][1],bricks[i][2]-bricks[i][0],bricks[i][3]-bricks[i][1]);
  }
}
void moveBall()
{
  bx = bx+speedx;
  by = by+speedy;
  bf = bx+r/2;
  bb = bx-r/2;
  bu = by-r/2;
  bd = by+r/2;
}
void insideFrame()
{
  if(bf>width || bb<=0)
  {
    print("condition ran");
    speedx*=-1;
  }
  if(bu<=0 || bd>=height)
  {
    speedy*=-1;
  }
}
void chkCollision()
{
  for(int i=0;i<=2;i++)
  {
    if(bb<=bricks[i][2] || bf>=bricks[i][0])
    {
      speedx*=-1;
    }
    if(bd>=bricks[i][1] || bu<=bricks[i][3])
    {
      speedy*=-1;
    }  
  }
}