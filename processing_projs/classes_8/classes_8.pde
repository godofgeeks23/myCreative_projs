//Object Oriented Programming means to put "data" and "functionality" together.
//Using classes,objects,etc.
//For example, HUMAN is a class having data associated with it: height,color...
//a HUMAN also has functionality like sleep,run,walk,talk,etc.
//When a class is created, we define a template of the object.
//Then we create a INSTANCE : Replica of the class

//Hence, Class is template, Object is the instance itself.

Bubble b;

void setup()
{
  size(420,360);
  b = new Bubble();    //Create a new instance of the class
  b.r = 75;            //Set the properties of the instance
}

void draw()
{
  background(255);
  b.ascend();          //Call the functions related to it
  b.display();
  b.top();
}

void mouseMoved()
{
  if(b.in(mouseX,mouseY)==1)
  {
    b.highlight();
  }
}
void mousePressed()
{
  if(b.in(mouseX,mouseY)==1)
  {
    b.highlight();
    b.pop();
  }
}