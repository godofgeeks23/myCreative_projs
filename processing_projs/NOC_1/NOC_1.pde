//Nature of Code

//Generally we specify a normal if-else-if condition where all posibilities have
//an equal probabilities. But if we change these probabilities, then we can create
// a more systematic random movement, still not so random and that favours our
//desire that how should it move.

//x = constrain(x,from,to);    // keeps the var x within 'from' and 'to'.

Walker w;
void setup()
{
  size(600,500);
  w = new Walker();
}
void draw()
{
  w.walk();
  w.show();
}