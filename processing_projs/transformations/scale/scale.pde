void setup()
{
  size(500,400);
}
void draw()
{
  background(25);
  fill(240);
  rect(0,0,100,100);
  
  pushMatrix();              // be ready
  translate(mouseX,mouseY);  // set origin to (x,y)
  rect(0,0,100,100);         // draw rectangle
  popMatrix();               // update
}