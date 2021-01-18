//Arrays

int contd = 1;
Bubble [] particles = new Bubble[100];

void setup()
{
  size(800,660);
  for(int i=0;i<=99;i++)
  {
    particles[i] = new Bubble(i);
  }
}

void draw()
{
  background(0,0,25);
  for(int i=0;i<=99;i++)
    {
      particles[i].display();
      particles[i].ascend();
      particles[i].top();
    }
}