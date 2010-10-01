class Dwarf extends ChaoticMonster {
 
 PImage dwarfImg = loadImage("dwarf.jpg");
  
 public Dwarf() {
   
   super.giving = "Sure, you can borrow my axe!";
   super.taking = "I can still hit your groin!";
     
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
     super.render(x,y);
    
     image(dwarfImg, x,y,w,h);
   
   }
  
}
