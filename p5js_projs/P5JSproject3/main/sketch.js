//illustrates the mouse events...

function setup() {
	createCanvas(580, 480);
	background(0);
}

function draw() 
{
	fill(255);
	textSize(12);
	text("d r a g  t o  d r a w ...  ,  c l i c k  t o  e r a s e ...",20,20);	
}

function mouseDragged()
{
	fill(20,80,50);
	noStroke();
	ellipse(mouseX,mouseY,50);
}

function mousePressed()
{
	background(0);
}