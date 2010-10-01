

abstract class ChaoticMonster extends Monster {

  private String giving;
  private String taking;

  public void chaoticActions()
  {
    println("The " + this.getClass().getSimpleName() + " is being unpredictable:");

    giveAndTake();

  }

  abstract public void giveAndTake();

  public void render(int x, int y)
  {

    if (isMouseOver == true)
      tint(0,0,255);
    else
      tint(255,255,255);
  }
}

