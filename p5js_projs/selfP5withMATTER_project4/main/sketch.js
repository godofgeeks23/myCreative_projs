var myEngine, myWorld, myGround, count = -1,myWall1, myWall2;
var myInclinedPlane;
var myBoxes = [];
var myBoxProps = {friction: 0, restitution: 0.2};

function setup() {
  createCanvas(640, 480);
  myEngine = Matter.Engine.create();
  myWorld = myEngine.world;
  Matter.Engine.run(myEngine);
  
  myGround = Matter.Bodies.rectangle(width/2,height-20,width,20, {isStatic: 'true'});
  myWall1 = Matter.Bodies.rectangle(20,height/2,20,height, {isStatic: 'true'});
  myWall2 = Matter.Bodies.rectangle(width-20,height/2,20,height, {isStatic: 'true'});
  myInclinedPlane = Matter.Bodies.rectangle(width/4,height/2,width/4,20, {isStatic: 'true', angle: PI/4});

  Matter.World.add(myWorld, [myGround, myWall1, myWall2, myInclinedPlane]);
}

function draw() {
	background(51);
	rectMode(CENTER);

	stroke(80);
	fill(200);
	for(var i=0; i<=count;i++)
	{
		showRoundBody(myBoxes[i]);
	}
	fill(0,200,0);
	noStroke();
	rect(myGround.position.x, myGround.position.y, width, 20);
	rect(myWall1.position.x, myWall1.position.y, 20, height);
	rect(myWall2.position.x, myWall2.position.y, 20, height);
	push();
	translate(myInclinedPlane.position.x, myInclinedPlane.position.y);
	rotate(myInclinedPlane.angle);
	rect(0,0,width/4,20);
	pop();
}

function mouseDragged() {
	myBoxes.push(Matter.Bodies.circle(mouseX,mouseY,10,myBoxProps));
	count++;
	Matter.World.add(myWorld,myBoxes[count]);
}

function showRoundBody(myBody)
{
	push();
	translate(myBody.position.x, myBody.position.y);
	rotate(myBody.angle);
	ellipse(0,0,2*10);
	pop();
}