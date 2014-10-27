//your variable declarations here
public void setup() {
  Cow c = new Cow("cow", "moo");
  System.out.println(c.getType() + " goes " + c.getSound());
}

interface Animal {
  public String getSound();
  public String getType();
}

class Cow implements Animal {
  private String myType;
  private String mySound;
  public Cow(String type, String sound) {
    myType = type;
    mySound = sound;
  }
  public Cow() {
    myType = "unknown";
    mySound = "unknown";
  }
  public String getSound() {return mySound;}
  public String getType() {return myType;}
}

class Farm {
  private Animal[] aBunchOfAnimals = new Animal[3];
  public Farm() {
    aBunchOfAnimals[0] = new NamedCow("cow", "Elsie", "moo");
    aBunchOfAnimals[1] = new Chick("chick", "cheep", "cluck");
    aBunchOfAnimals[2] = new Pig("pig", "oink");
  }
  public void animalSounds() {
    for (int nI = 0; nI < aBunchOfAnimals.length; nI++) {
      System.out.println(aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());
    }
    System.out.println("The cow is known as " + ((NamedCow) aBunchOfAnimals[0]).getName());
  }
}