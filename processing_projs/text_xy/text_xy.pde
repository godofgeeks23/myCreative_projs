void setup()
{
  size(400,300);
  textSize(60);
}
void draw()
{
  background(0);
  text(key,20,75);
  if(key=='X')
  {
    exit();
  }
}