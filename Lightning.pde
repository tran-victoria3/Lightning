//Victoria Tran - AP Computer Science Block 4
//Lightning project with random walk 
//When the user clicks the mouse || keyboard, lightning should shoot out from the mousepoint 
//use for loops since you dont know your end condition

// void setup() needs to set the strokeWeight() and background() of your applet
// void draw() needs to do two things:
// set stroke() color of the lightning bolt to some random() value
// a while loop that repeats the following until the endX is off the screen:
// set endX to startX plus a random integer from 0 to 9
// set endY to startY plus a random integer from -9 to 9
// draw a line() with endpoints startX,startY,endX,endY
// set startX to equal endX and startY to equal endY
// void mousePressed() needs to set startX,startY,endX,endY back to their original values.

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;


void setup()
{
	size(300,300);
	background(0,0,0);
	strokeWeight(3);
	noLoop();
}
void draw()
{
	 while (endX <300){
		endX = startX + (int)(Math.random()*10 + 1);
		endY = startY + (int)(Math.random()*10 - 5);
		stroke((random(0,256)),(random(0,256)),(random(0,256)));
		line(startX,startY,endX,endY);
		startX = endX;
		startY= endY;
		

	}

}

void mousePressed()
{

startX = mouseX;
startY = mouseY;
endX = 0;

	redraw();
}