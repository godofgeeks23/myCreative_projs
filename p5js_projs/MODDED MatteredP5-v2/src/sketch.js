var box1, ball1, barrier1;
function setup(){
  setupDefault();
  box1 = matter.makeBlock(180, 50, 80, 80); 
  ball1 = matter.makeBall(200, 150, 30); 
  barrier1 = matter.makeBarrier(120, 300, 100, 20);
  box1.setLabel("avibox");  ball1.setLabel("aviball");  barrier1.setLabel("avibarrier");
}
function draw(){
  background(0);  showWalls();  box1.show();  ball1.show();  barrier1.show();
  if(matter.getCollidingBodyAlabel())  {
  	print(matter.getCollidingBodyBlabel()+" collided with "+matter.getCollidingBodyAlabel());  
  	matter.nullCollidingPair();
  }
}
//print(testBlock.body.restitution);