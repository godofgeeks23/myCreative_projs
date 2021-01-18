class Walker
{
  float x,y,choice;
  Walker()
  {
    x = 0;
    y = height/2;
  }
  void walk()
  {
    choice = random(1);
    if(choice<0.4)
    {
      x++;
    }
    else if(choice<0.6)
    {
      x--;
    }
    else if(choice<0.8)
    {
      y++;
    }
    else
    {
      y--;
    }
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
  void show()
  {
    ellipse(x,y,1,1);
  }
}