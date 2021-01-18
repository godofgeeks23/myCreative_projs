/*
Gaussian Distribution gives us a random no. about a mean value.
*/

import java.util.Random;

Random gen;
void setup()
{
  size(600,500);
  gen = new Random();
}
void draw()
{
  float h = (float)gen.nextGaussian();
  ellipse(width/2,height/2,50+h,50+h);
}