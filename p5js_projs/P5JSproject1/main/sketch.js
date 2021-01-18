var angle;
function setup() {
  createCanvas(640, 480,WEBGL);
  angle = 0.0;
}

function draw() {
	background(51);
	fill(mouseX,mouseY,mouseX+mouseY);
	rotateX(-angle);
	rotateY(-angle);
  	box(180);
  	angle = angle+0.009;
}