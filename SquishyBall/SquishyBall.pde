int ovalheight = 100;
int ovalwidth = 100;
int increment = 5;

void setup()
{
  size(1280, 720);
}

void draw()
{
  background(0);
  
  for (int i = 0; i < 1280; i++)
  {
    for (int j = 0; j < 720; j++)
    {
      stroke(random(255));
      point (i, j);
    }
  }
  
 /* 
  if (keyPressed == true) {
    
    if (keyCode == RIGHT) {
      ovalwidth += increment;
    }
    else if (keyCode == LEFT) {
        ovalwidth -= increment;
    }
    else if (keyCode == UP) {
      ovalheight += increment;
    }
    else if (keyCode == DOWN) {
      ovalheight -= increment;
    }
  }
  
  ellipse(640, 360, ovalwidth, ovalheight);
*/

}
