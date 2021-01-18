void setup()
{
  size(500,400);
}
void draw()
{
  background(25);
  fill(240);
  rect(width/2-50,height/2-50,100,100);
  text("Move mouse horizontally to set angle...",10,20);
  
  pushMatrix();                           // be ready
  translate(width/2,height/2);
  rotate(radians(mouseX));               // set origin to (x,y)
  rect(-50,-50,100,100);                     // draw rectangle
  popMatrix();                           // update
}