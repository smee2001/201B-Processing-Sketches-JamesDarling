import ddf.minim.*;


ArrayList monsters;

Minim minim;
AudioSnippet growl;

void setup() {
  size(1400,200);
  monsters = new ArrayList();

  monsters.add(new Vampire());
  monsters.add(new Unicorn());
  monsters.add(new Werewolf());
  monsters.add(new Dwarf());
  monsters.add(new Vortex());
  monsters.add(new Nymph());
  monsters.add(new IndifferentUnicorn());
  
  
  minim = new Minim(this);
  growl = minim.loadSnippet("tiger2.wav");
//  growl.play();
  
}

public void draw() {
  
  
  for (int i = 0; i < monsters.size(); i++) {
  
    Monster m = (Monster) monsters.get(i);
   
    int xpos = i * 200; int ypos = 0;
   
    m.checkIfMouseOver(xpos, ypos, mouseX, mouseY);
  
    m.render(xpos, ypos);
  }  
}

public void mousePressed()
{
  for (int i = 0; i < monsters.size(); i++) {
    Monster m = (Monster) monsters.get(i);
  
    if (m.isMouseOver == true)
    {
      if (m instanceof FriendlyMonster)
      {
        ((FriendlyMonster)m).friendlyActions();
      }
      else if (m instanceof AngryMonster)
      {
        ((AngryMonster)m).angryActions();   
      }
      else if (m instanceof ChaoticMonster)
      {
        ((ChaoticMonster)m).chaoticActions();
      }    
      println("\n");
    }
    
    
  }
}

void stop()
{
  growl.close();
  minim.stop();
 
  super.stop();
}
