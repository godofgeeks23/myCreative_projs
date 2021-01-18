//outer boundary: stroke
//interior of shape: fill
//color is from 0 to 255
//ORDER OF THE LINES IS VERY IMPORTANT. IF WE PUT BACKGROUND AFTERWARDS, BACKGORUND IS MADE OVER THE SHAPES

size(600,600);            //size of window
background(150);

stroke(255,255,255);
fill(0,244,38);          //by rgb notation
rect(100,100,300,300);

line(100,100,400,400);

fill(#ff00ff);           //by hexadecimal notation
ellipse(250,250,100,100);
point(250,250);

fill(50);              //all values (r,g,b) are set to same value, here 200 for GREYSCALE
ellipse(100,100,50,50);

fill(60,50);           //60 provides the greyscale value, 50 is the ALPHA value. It is equivalent to fill(120,120,120,50)
rect(150,150,200,200);