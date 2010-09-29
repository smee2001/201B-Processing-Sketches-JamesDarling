// Adding a comment to test GitHub
// Adding a new comment
import processing.opengl.*;

float viewAngle=0.0;
float distance=100.0;
float rotateAngle=0.0;

void myCube()
{
  beginShape(QUADS);

  fill(255, 0, 0, 127);
  vertex(-10, -10, -10);
  vertex(-10, 10, -10);
  vertex(10, 10, -10);
  vertex(10, -10, -10);

  fill(0, 0, 255, 127);
  vertex(-10, -10, -10);
  vertex(-10, -10, 10);
  vertex(10, -10, 10);
  vertex(10, -10, -10);

  fill(255, 255, 0, 127);
  vertex(-10, 10, -10);
  vertex(-10, 10, 10);
  vertex(10, 10, 10);
  vertex(10, 10, -10);

  fill(0, 255, 0, 127);
  vertex(-10, -10, 10);
  vertex(-10, 10, 10);
  vertex(10, 10, 10);
  vertex(10, -10, 10);

  fill(0, 0, 255,127);
  vertex(-10, -10, -10);
  vertex(-10, -10, 10);
  vertex(10, -10, 10);
  vertex(10, -10, -10);

  fill(0, 255, 255, 127);
  vertex(-10, -10, -10);
  vertex(-10, -10, 10);
  vertex(-10, 10, 10);
  vertex(-10, 10, -10);

  fill(255, 0, 255, 127);
  vertex(10, -10, -10);
  vertex(10, -10, 10);
  vertex(10, 10, 10);
  vertex(10, 10, -10);
  
  endShape();
}


void setup()
{
  size(1280, 720, OPENGL);

}


void draw()
{
  noFill();
  background(0);

  if (keyPressed == true) {
    
    if (keyCode == RIGHT) {
      viewAngle += .1;
    }
    else if (keyCode == LEFT) {
        viewAngle -= .1;
    }
    else if (keyCode == UP) {
      distance-=5;
    }
    else if (keyCode == DOWN) {
      distance+=5;
    }
    
//    switch(key) {
//      case '
        
    //background(0);
  } else {
    //background(255);
  }


  float xval = sin(viewAngle)*distance;
  float zval = cos(viewAngle)*distance;

  camera(xval, 0.0, zval, 0.0, 0.0, 0.0, 
         0.0, 1.0, 0.0);

  rotateAngle+=.05;

  rotateX(rotateAngle);


  //viewAngle += .05;

//  translate(0, 0, -30);
//  rotateX(-PI/6);
//  rotateY(PI/3);
  //box(45);
  myCube();
  
  
  
}
  
  
