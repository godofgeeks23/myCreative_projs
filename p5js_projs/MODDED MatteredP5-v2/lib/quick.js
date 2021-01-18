var temp_walls = [], canvas;
var topwall_prop = {friction: 0, frictionAir: 0, restitution: 0, label: "roof"};
var groundwall_prop = {friction: 0, frictionAir: 0, restitution: 0, label: "ground"};
var leftwall_prop = {friction: 0, frictionAir: 0, restitution: 0, label: "left_wall"};
var rightwall_prop = {friction: 0, frictionAir: 0, restitution: 0, label: "right_wall"};
function createWalls1(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, groundwall_prop));//ground
}
function createWalls3(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, groundwall_prop));//ground
  temp_walls.push(matter.makeBarrier(w/2, height/2, w, height, leftwall_prop));//left wall
  temp_walls.push(matter.makeBarrier(width-(w/2), height/2, w, height, rightwall_prop));//right wall
}
function createWalls4(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, groundwall_prop));//ground
  temp_walls.push(matter.makeBarrier(w/2, height/2, w, height, leftwall_prop));//left wall
  temp_walls.push(matter.makeBarrier(width-(w/2), height/2, w, height, rightwall_prop));//right wall
  temp_walls.push(matter.makeBarrier(width/2, w/2, width, w, topwall_prop));//top wall
  for(i of temp_walls)  {    i.setFillColor(100,100,100);  }
}
function showWalls()
{
  for(i of temp_walls)  {    i.show();  }
}
function setupDefault()
{
  canvas = createCanvas(660, 465);
  matter.init();
  matter.mouseInteraction(canvas);
  createWalls4(10);
}