//Images in Processing
//We use a variable named PImage to store all the information about a image.
//image(Image, x, y, width, height)
//x: top left x, y: top left y 

PImage img;

void setup()
{
  img = loadImage("image1.JPG");
  size(600,440);
}
void draw()
{
  background(0);
  image(img,0,0,mouseX,mouseY);
}