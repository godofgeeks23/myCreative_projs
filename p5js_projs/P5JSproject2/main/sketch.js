function setup() {
  createCanvas(580, 480);
  print("canvas created!!!");
}

function draw() {
	//repetedly draw the background
	background(200);

	//draw a line 
	line(100,100,180,120);

	//draw a recangle by its center coordinates
	rectMode(CENTER);
	rect(100,250,80,100);
	
	//draw the red square with yellow this border
	fill(255,0,0);
	stroke(255,255,0);
	strokeWeight(8);
	rect(150,300,80,100);
	
	//reset the stroke width to 1 pixel
	strokeWeight(1);

	//draw a blue ellipse with no border
	noStroke();
	fill(20,67,200);
	ellipse(290,250,170,130);

	//draw a ellipse with border only, i.e. no fill color 	noFill();
	stroke(34,189,31);
	noFill();
	ellipse(300,340,130,90);

	//draw a transparent rectangle at the current mouse position
	fill(20,200,2,100);
	stroke(0,0,0);
	rect(mouseX,mouseY,170,130);
}