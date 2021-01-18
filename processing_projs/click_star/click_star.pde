//REUSABILITY: reuse that code again in future

float x=width/2,y=height/2,xspeed=2,yspeed=1;
void setup()
{
  size(640,500);
  background(255);
}

void draw()
{}

void mouseClicked()
{
  star(mouseX,mouseY);
}

void star(int x, int y)
{
  fill(0,random(255),0);
  beginShape();        // to begin a abstract shape
  vertex(x,y-50);      //{ define the ponts to join
  vertex(x+14,y-20);
  vertex(x+47,y-15);   
  vertex(x+23,y+7);
  vertex(x+29,y+40);
  vertex(x,y+25);
  vertex(x-29,y+40);
  vertex(x-23,y+7);
  vertex(x-47,y-15);
  vertex(x-14,y-20);   //}
  endShape(CLOSE);     //finish the shape
}