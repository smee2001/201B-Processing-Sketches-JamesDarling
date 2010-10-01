
class IndifferentUnicorn extends Unicorn {

  public void giveGifts() {
    
    if (random(-1,1)>0)
    {
      super.giveGifts();
    } 
    else
    {
      println("Neigh!");
    }
  }

}

