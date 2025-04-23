Player player;

class ChangeBackground {
  PImage bg;
  
  ChangeBackground(String filename) {
    bg = loadImage(filename);
  }
  
  void display() {
    background(bg);
  }
  
}
