var testBlock, properties = {friction: 0, frictionAir: 0, restitution: 0};
function setup(){
  setupDefault();
  testBlock = matter.makeBlock(width/2, height/2, 50, 50, properties);
  matter.zeroGravity();
  //print(testBlock.body.restitution);
}
function draw(){
  background(0);  noStroke();  rectMode(CENTER);
  fill(20,200,70);  showWalls();
  fill(150, 0, 0);  testBlock.show();
}
function keyPressed(){
  if(keyCode == UP_ARROW)							{
    testBlock.applyForce(0,-0.1);  					}
  else if(keyCode == DOWN_ARROW)					{
    testBlock.applyForce(0,0.1);  					}
  else if(keyCode == LEFT_ARROW)					{
    testBlock.applyForce(-0.1,0);  					}
  else if(keyCode == RIGHT_ARROW)					{
    testBlock.applyForce(0.1,0);  					}
  else if(keyCode == TAB)							{
    testBlock.rotateAbout(width/2, height/2, PI/4); }
  else if(keyCode == CONTROL)						{
    testBlock.translate(10, 0);  					}
  else if(keyCode == ENTER)							{
    testBlock.setAngularVelocity(-0.2);  			}
}
function mousePressed()								{
  testBlock.freeze();								}
function mouseReleased()							{
  testBlock.unfreeze();								}
