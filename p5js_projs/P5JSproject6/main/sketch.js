//program to use some maths

var x,y,r,theta,tox,toy;
var cr,cg,cb;
function setup() {
	createCanvas(660, 480);
	background(0);
	x = width/2;
	y = height/2;
	r = 100;
	theta = 0;
	cr = 0;
	cg = 0;
	cb = 0;
}

function draw() 
{
	stroke(cr,cg,cb);
	tox = x+r*sin(toRadian(theta));
	toy = y+r*cos(toRadian(theta));
	line(x,y,tox,toy);
	theta+=random(1,10);
	r = random(1,50);
	changeColor();
}

function toRadian(deg)
{
	var temp = (PI/180)*deg;
	return temp;
}

function distance(x1,y1,x2,y2)
{
	var temp = sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
	return temp;
}

function changeColor()
{
	cr = random(0,255);
	cg = random(0,255);
	cb = random(0,255);
}