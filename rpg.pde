import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

import processing.pdf.*;

import gifAnimation.*;
int startTime;
int delayTime = 3000;

ChangeBackground level;
Player playerChar;
Enemy enemyChar;

PImage bg;
Button[] buttons;
Gif City;
boolean removeButtons = false;

void setup() {
  size(1080, 616);
  bg = loadImage("Background.jpg");
  buttons = new Button[3];
  buttons[0] = new Button(50, 50, 100, 50, "Play");
  buttons[1] = new Button(50, 150, 100, 50, "Settings");
  buttons[2] = new Button(50, 250, 100, 50, "Credit");
 
  level = new ChangeBackground("levelOne.png");
 
  playerChar = new Player(this, "Idle.gif", width/2, 500);
  playerChar.DisplayPlayer();
 
 enemyChar = new Enemy(this, "")
}

// Define a Button class
class Button {
  float x, y, w, h;
  String label;
  color bgColor, textColor;

  Button(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
    this.bgColor = color(200);
    this.textColor = color(0);
  }

  void display() {
    fill(bgColor);
    rect(x, y, w, h);
    fill(textColor);
    textAlign(CENTER, CENTER);
    text(label, x + w / 2, y + h / 2);
  }

  boolean isMouseOver() {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }

  void setColors(color bgColor, color textColor) {
    this.bgColor = bgColor;
    this.textColor = textColor;
  }
}

boolean playWasPressed = false;

void draw() {
  if (removeButtons && City != null)  {
    image(City, 0, 0); // Display GIF if buttons are removed
  } else {
    background(bg); // Display background if buttons are still there
   
    for (Button btn : buttons) {
      btn.display();
     
      if (btn.isMouseOver()) {
        btn.setColors(color(100), color(255));
      } else {
        btn.setColors(color(200), color(255));
      }
    }
  }
 
  if (playWasPressed) {
    if (millis() - startTime >= delayTime) {
      level.display();
    if (playerChar != null) {
       playerChar.DisplayPlayer();    
       enemyChar.
      }
    }
  }
}

void mousePressed() {
  for (Button btn : buttons) {
    if (btn.isMouseOver()) {
      println(btn.label);

      if (btn.label.equals("Play")) { // Use .equals() for string comparison
         startTime = millis();
        removeButtons = true;
        playWasPressed = true;
      }
    }
  }

  if (removeButtons && City == null) {  
    buttons = new Button[0]; // Remove buttons after the loop
    //City = new Gif(this, "City.gif");
  //  City.play();    
  }
}

void keyPressed() {
  playerChar.keyPressed();
}

void keyReleased() {
  playerChar.keyReleased();
}
