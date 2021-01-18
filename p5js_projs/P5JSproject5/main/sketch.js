//program to bounce a ball around the page

var cx,cy,cr,sxp,ysp;
function setup() {
	createCanvas(660, 480);
	background(0);
	cx = width/2;
	cy = height/2;
	cr = 50;
	xsp = 8;
	ysp = 4;
}

function draw() 
{
	background(0);
	fill(190);
	ellipse(cx,cy,cr);
	if((cx+cr/2)>=width)
	{
		xsp*=-1;
	}
	else if((cx-cr/2)<=0)
	{
		xsp*=-1;
	}
	if((cy+cr/2)>=height)
	{
		ysp*=-1;
	}
	else if((cy-cr/2)<=0)
	{
		ysp*=-1;
	}
	cx+=xsp;
	cy+=ysp;
}