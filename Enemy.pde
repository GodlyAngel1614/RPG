Player playerBody;
int cooldown = 2000;
int startCooldown;
Gif enemyCharacter;
PApplet rpg;
  
public class Enemy { 
  float x, y;
  Gif enemyCharacter;
  PApplet rpg;
  
  Enemy(PApplet rpg, String spritePath, float x, float y){
    this.rpg = rpg;
    this.x = x;
    this.y = y;
    
    enemyCharacter = new Gif(rpg, spritePath);
    enemyCharacter.loop();  
  }
  
  void logistics(){}
  
  
  
  void attack(){}
  
  void takeDamage(){}
  
  void followPlayer(){}
}
