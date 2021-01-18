void setup()
{
  size(400,300);
  background(100);
}

void draw()                
{
  //pmouseX, pmouseY tell the previous postion of mouse
    
  line(pmouseX,pmouseY,mouseX,mouseY);
}