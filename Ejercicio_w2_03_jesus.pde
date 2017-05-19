/*
 * Creative Coding
 * Exercise W02-03 reciclying code from the folowing lines and
 * A reinterpretation of Vera Molnar’s 25 Squares

 * ((((Week 2, 03 - n squares
 * by Indae Hwang and Jon McCormack
 * Updated 2016
 * Copyright (c) 2014-2016 Monash University)))
    
 *((( In the next iteration of the square drawing sketch, this version selects a random number of squares
 * and a random gap between them. From this it calculates the width of each square then draws the squares
 * using two nested for loops.)))
 
 
 * The main change is based on x and y position of the rect including random for the changes I wanted it
 * rect( random (gap * (i+1)) + cellsize * i,  random (gap * (j+1)) + cellsize * j, cellsize, cellsize);
 * The next change was the redscale with random
 */

void setup() {
  size(600, 600);
  rectMode(CORNER);
  noStroke();
  frameRate(1);  // set the frame rate to 1 draw() call per second
}


void draw() {

  background(180); // clear the screen to grey
  
  int gridSize = (int) random(5, 5);   // select a random number of squares each frame
  int gap = (int) random(4, 9); // select a random gap between each square
  
  
  // calculate the size of each square for the given number of squares and gap between them
  float cellsize = ( width - (gridSize + 1) * gap - 1 )  / (float)gridSize;
  
  // print out the size of each square
  println("cellsize = " + cellsize);
  
  // calculate shadow offset
  float offsetX = cellsize/20.0 ;
  float offsetY = cellsize/20.0 ;
 

    for (int i=0; i<gridSize; i++) {
      for (int j=0; j<gridSize; j++) {

        //fill(255, 180); // shadow
        //rect(gap * (i+1) + cellsize * i + offsetX, gap * (j+1) + cellsize * j + offsetY, cellsize, cellsize);

        fill(random(255), random(0), random(0), 200); // rectangle
        rect( random (gap * (i+1)) + cellsize * i,  random (gap * (j+1)) + cellsize * j, cellsize, cellsize);
      }
    }
} //end of draw 