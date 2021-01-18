var floor1,floor2,floor3;
var myball;
function setup() {
  createCanvas(660, 465);
  matter.init();
  floor1 = matter.makeBarrier(width/2,height-20,width,20,{friction: 0});
  floor2 = matter.makeBarrier(150,250,90,20,{angle: PI/4, friction: 0});
  floor3 = matter.makeBarrier(280,290,190,20,{friction: 0});  
  myball = matter.makeBall(150,10,20,{friction: 0});
}
function draw() {
  background(0);
  noStroke();
  fill(255,0,0);
  floor1.show();
  fill(0,255,0);
  floor2.show();
  fill(0,0,255);
  floor3.show();
  fill(255);
  myball.show();
}