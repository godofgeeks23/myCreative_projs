Ball b;
void setup()
{
  size(650,650);
  b = new Ball();
}
void draw()
{
  background(0);
  
  b.display();
  b.change();
  b.move();
  b.checkEdges();
}