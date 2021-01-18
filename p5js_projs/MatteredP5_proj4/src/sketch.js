var testBall, walls = [];
function setup() 
{
  createCanvas(660, 465);
  matter.init();
  testBall = matter.makeBlock(width/2, height/2, 50, 50, {restitution: 0});
  walls.push(matter.makeBarrier(width/2, height-10, width, 20));
  walls.push(matter.makeBarrier(10, height/2, 20, height));
  walls.push(matter.makeBarrier(width-10, height/2, 20, height));
  print(testBall.body.restitution);
}
function draw() 
{
  background(0);
  noStroke();
  fill(20,200,70);
  for(var i = 0; i<walls.length; i++)
  {
  	walls[i].show();
  }
  fill(150, 0, 0);
  testBall.show();
}
function mousePressed()
{
	Matter.Body.setAngularVelocity(testBall.body, -0.2);
}

