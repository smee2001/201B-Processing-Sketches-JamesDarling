
class Nymph extends FriendlyMonster {

  PImage NymphImg = loadImage("nymph.jpeg");
  public Nymph() {
    super.gifts.add("a magical rainbow");
    super.gifts.add("a gumdrop");
  } 

  public void friendlyActions()
  {
    println("The " + this.getClass().getSimpleName() + " is being Extremely friendly:");
    
    println("You copulate with the Nymph.");
    
  }

  public void giveGifts() {}

  public void render(int x, int y) {
    super.render(x,y);
    image(NymphImg, x,y,w,h);
  }
}
