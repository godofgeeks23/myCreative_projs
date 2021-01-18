var myEngine, myWorld, myGround, count = -1;
var myBoxes = [];
var myBoxProps = {friction: 10, restitution: 0};

function setup() {
  createCanvas(640, 480);
  myEngine = Matter.Engine.create();
  myWorld = myEngine.world;
  Matter.Engine.run(myEngine);
  
  myGround = Matter.Bodies.rectangle(width/2,height-20,width,20, {isStatic: 'true'});
  
  Matter.World.add(myWorld,myGround);
}

function draw() {
	background(51);
	rectMode(CENTER);

	fill(200);
	for(var i=0; i<=count;i++)
	{
		rect(myBoxes[i].position.x, myBoxes[i].position.y, 20, 20);	
	}
	fill(0,200,0);
	noStroke();
	rect(myGround.position.x, myGround.position.y, width, 20);
}

function mouseClicked() {
	myBoxes.push(Matter.Bodies.rectangle(mouseX,mouseY,20,20,myBoxProps));
	count++;
	Matter.World.add(myWorld,myBoxes[count]);
}