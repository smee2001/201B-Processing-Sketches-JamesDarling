
class Werewolf extends AngryMonster {
 
 PImage werewolfImg = loadImage("werewolf.jpg");
  
 public Werewolf() {
   super.warCry = "I will tear you apart!";
 }
 
 public void yell() {
   println(super.warCry);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(werewolfImg, x,y,w,h);
   
   }
  
}
