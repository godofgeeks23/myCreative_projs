// program to depict some 3d
function setup() {
	createCanvas(660, 480);
	background(0);
}
function draw() {
	stroke(200);	
}
function mouseDragged() {
	line(pmouseX,pmouseY,mouseX,mouseY);
}