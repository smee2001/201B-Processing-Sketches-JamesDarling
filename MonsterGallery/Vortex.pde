class Vortex extends ChaoticMonster {
 
// PImage dwarfImg = loadImage("dwarf.jpg");
  
 public Vortex() {
   
   super.giving = "You've entered a NICER alternate reality...";
   super.taking = "You've entered a HORRIBLE alternate reality!!";
     
 }
 
 public void giveAndTake() {
   
   float flip = random(-1,1);
 
   if (flip > 0)
   {
     println(super.giving);
   }
   else
   {
     println(super.taking);
   }
   
 }
 
 public void render(int x, int y){
    // super.render(x,y);
    
    
    if (isMouseOver == true)
      fill(0,0,255);
    else
      fill(255,255,255);
    
    for (int i = 200; i>0; i-=5)
    {
      ellipse(x+100,y+100,i,i);
    }
  
  }
}
