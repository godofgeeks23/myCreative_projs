//program to drag a circle aroud the page

var cx,cy,cr;
var dx,dy;
function setup() {
	createCanvas(580, 480);
	background(0);
	cx = width/2;
	cy = height/2;
	cr = 60;
}

function draw() 
{
	background(0);
	stroke(255);
	ellipse(cx,cy,2*cr);
	if(distance(cx,cy,mouseX,mouseY)<=cr)
	{
		fill(40,0,80);
	}
	else
	{
		fill(60,20,100);
	}
}

function distance(x1,y1,x2,y2)
{
	var temp = sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
	return temp;
}

function mousePressed()
{
	dx = mouseX- cx;
	dy = mouseY - cy;
}

function mouseDragged()
{
	if(distance(cx,cy,mouseX,mouseY)<=cr)
	{
		print("inside...");
		cx = mouseX-dx;
		cy = mouseY-dy;
	}	
}
