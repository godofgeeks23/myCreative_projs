var temp_walls = [];
function createWalls1(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, properties));
}
function createWalls3(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, properties));
  temp_walls.push(matter.makeBarrier(w/2, height/2, w, height, properties));
  temp_walls.push(matter.makeBarrier(width-(w/2), height/2, w, height, properties));
}
function createWalls4(w)
{
  temp_walls.push(matter.makeBarrier(width/2, height-(w/2), width, w, properties));
  temp_walls.push(matter.makeBarrier(w/2, height/2, w, height, properties));
  temp_walls.push(matter.makeBarrier(width-(w/2), height/2, w, height, properties));
  temp_walls.push(matter.makeBarrier(width/2, w/2, width, w, properties));
}
function showWalls()
{
  for(var i = 0; i<temp_walls.length; i++)
  {
    temp_walls[i].show();
  }
}
function setupDefault()
{
	createCanvas(660, 465);
  	matter.init();
  	createWalls4(10);
}