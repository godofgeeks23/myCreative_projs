var floor, myballs = [], connections = [], bigball;
var startx = 50, ballcount = 10;
function setup() {
  createCanvas(660, 465);
  matter.init();
  floor = matter.makeBarrier(width/2, height-20, width, 20, {friction: 0});
  myballs.push(matter.makeBall(startx, height/3, 20, {isStatic: 'true'}));
  for(var i = 1; i<=ballcount-2; i++)
  {
  	myballs.push(matter.makeBall(startx+20*i, height/3, 20, {friction: 0, restitution: 1.5}));	
  }
  myballs.push(matter.makeBall(startx+20*(ballcount-1), height/3, 20, {isStatic: 'true'}));
  for(var i = 0; i<myballs.length-1; i++)
  {
  	connections.push(matter.connect(myballs[i], myballs[i+1], {stiffness: 0.5}));	
  }

  bigball = matter.makeBall(startx+10, 10, 50, {friction: 0, restitution: 1});
}
function draw() {
  background(0);
  noStroke();
  fill(255,0,0);
  floor.show();
  fill(200);
  for(var i=0; i<myballs.length; i++)
  {
  	myballs[i].show();
  }
  fill(0,200,0);
  bigball.show();
  if(bigball.isOffCanvas())
  {
  	bigball.setPosition(startx+10, 10);
  	bigball.setVelocity(0,0);
  }
}
function keyPressed()
{
	if(keyCode == LEFT_ARROW)
	{
		bigball.setVelocityX(-8);	
	}
	else if(keyCode == RIGHT_ARROW)
	{
		bigball.setVelocityX(8);	
	}
	else if(keyCode == UP_ARROW)
	{
		bigball.setVelocityY(-8);	
	}
	else if(keyCode == DOWN_ARROW)
	{
		bigball.setVelocityY(8);	
	}
}