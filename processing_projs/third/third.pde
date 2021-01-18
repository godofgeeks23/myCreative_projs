//mousePressed() and keyPressed() are special functions like draw() and setup().
//they are used to run a block of code when a action is triggered

void setup()
{
  size(640,360);
  background(50);
}

void draw()
{
  stroke(255);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed()
{
  background(50);
}

void keyPressed()
{
  background(20);
}