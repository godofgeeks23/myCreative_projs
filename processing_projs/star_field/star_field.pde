Star[] stars = new Star[2000];
void setup()
{
  size(700,560);
  for(int i=0;i<2000;i++)
  {
    stars[i] = new Star();
  }
}
void draw()
{
  background(0);
  for(int i=0;i<2000;i++)
  {
    stars[i].show();
    stars[i].move();
    stars[i].incrRadius();
  }
}