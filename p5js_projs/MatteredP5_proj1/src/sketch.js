var floor;
var myball;

function setup() {
  createCanvas(660, 465);
  matter.init();

  floor = matter.makeBarrier(width/2,height-20,width,20,{friction: 0, staticFriction: 0});
  myball = matter.makeBall(width/2,30,20,{restitution: 1.1, friction: 0, staticFriction: 0});
}


function draw() {
  background(0);
  fill(200);
  noStroke();
  floor.show();
  myball.show();
}
