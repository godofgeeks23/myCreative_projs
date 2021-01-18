Bubble b1,b2;

void setup()
{
  size(420,360);
  b1 = new Bubble(50);
  b2 = new Bubble(20); 
}

void draw()
{
  background(255);
  b1.ascend();
  b1.display();
  b1.top();
  b2.ascend();
  b2.display();
  b2.top();
}