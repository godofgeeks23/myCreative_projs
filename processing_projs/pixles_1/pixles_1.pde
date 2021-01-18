//Pixels are the best way to examine and manipulate images at the ground level.
//set(x,y,color) paints the pixel at (x,y) with the specified colour. 
//But set(x,y,color) is slow in working.
//So we use the inbuilt default array of pixels.
//Before using the function e need to call the functions loadPixels() to load the pixles.
//After manipulating the pixels, call the function updatePixels() to apply changes.

//Pixels array contains pixels as:
//   1   2   3   4   5   6   7   8   9   10
//   11  12  13  14  15  16  17  18  19  20
//   21  22  23  24  25  26  27  28  29  30

//So its is not a convenient way to control a pixel at a (x,y) location.
//Hence we use a simple formula, for example if we want to use pixel at (x,y) - 
// - we write 'pixels[x+y*width] = color(r,g,b);'
//For greator convenience, use the variable: ' int loc = x+y*width; '

void setup()
{
  size(600,400);
  background(0);
}

void draw()
{
  loadPixels();
  for(int i=0;i<pixels.length;i++)
  {
    set(i,100,color(255));
    pixels[i] = color(random(100,250),0,random(100,250)); 
  }
  updatePixels();
}