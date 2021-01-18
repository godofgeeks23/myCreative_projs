//to run over and over again, a block of code is used...
//one will be SETUP, another will be DRAW
//setup is only once, draw will be over and over again

void setup()
{
  size(600,600);
}

void draw()                
{
  background(100);
  
  //mouseX, mouseY are special vars. for procesing. They tell the current postion
  //height and width are also reserved for window's current width, height
  
  rect(width-mouseX,height-mouseY,100,100);
}