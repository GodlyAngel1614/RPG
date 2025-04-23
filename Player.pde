int start;
int delay = 1000;
float maxHeight = 360.0;
float defaultHeight = 492.0;
    
class Player {
  int health;
  int level;
  Gif Char; 
  PApplet rpg;
  PImage enemy;
  float x, y;
  
  Player(PApplet rpg, String spritePath, float x, float y, int health) {
    this.rpg = rpg;
    this.x = x;
    this.y = y;
    
    if (health == 100) {
      rpg.image()
    }
    
    Char = new Gif(rpg, spritePath);
    Char.loop();    
  }
  
  void DisplayPlayer() {
   rpg.image(Char, x, y);
  }
  
  void keyPressed() {   
    int speed = 4;
    
    
    if (key == 'w') {
      y = y - (defaultHeight - maxHeight);
      println(y);    
     Char = new Gif(rpg, "jump.gif");
    Char.loop(); 
    } if (key == 'a') {
      x -= 1 * speed;     
      Char = new Gif(rpg, "runLeft.gif");
      Char.loop();  
    } if (key == 'd') {
      x += 1 * speed;     
      Char = new Gif(rpg, "runRight.gif");
      Char.loop(); 
    }
  }
  
  void displayHealth(float health, int level) {
    this.health = health;
    this.level = level;
  }
  
void keyReleased() {
   if (key == 'w' || key == 'a' || key == 'd') {
      y = defaultHeight;
      Char = new Gif(rpg, "Idle.gif");
      Char.loop();
    }
  }
}
