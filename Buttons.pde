/* feature list
isClicked -> isHover + mousePressed
Clicked color change
*/

Button button;

void setup()
{
  size(400, 400);
  button = new Button();
}

void draw()
{
  background(255);
  button.render();
  button.update();
}

class Button
{
  PVector position;
  float w;
  float h;
  
  color normal;
  color highlight;
  color pressed;
  color disabled;
  
  String textWords;
  color textColor;
  float textSize;
  
  Button()
  {
    position = new PVector(200, 100);
    w = 100;
    h = 30;
    
    // Set button colors here
    normal = color(150);
    highlight = color(200);
    pressed = color(100);
    disabled = color(50);
    
    // Set button text here
    textWords = "HI";
    textColor = color(0);
    textSize = 20;
  }
  
  void update()
  {
    isHover();
    isPressed();
  }
  
  void render()
  {
    rectMode(CENTER);
    
    // button changes appearance for pressed, hover and normal states
    if(isPressed())
    {
      stroke(0);
      fill(pressed);
    } else if (isHover())
    {
      stroke(204, 102, 0);
      fill(highlight);
    } else
    {
      stroke(0);
      fill(normal);
    }
    
    // button shape
    rect(position.x, position.y, w, h);
    
    // button text
    textAlign(CENTER, CENTER);
    textSize(textSize);
    fill(textColor);
    text(textWords, position.x, position.y); 
  }
  
  boolean isPressed()
  {
    if(mousePressed == true && isHover())
    {
      return true;
    } else {
      return false;
    }
  }
  
  boolean isHover()
  {
    // check if mouse is hovering over the button
    if(mouseX > position.x - w/2
    && mouseX < position.x + w/2
    && mouseY > position.y - h/2
    && mouseY < position.y + h/2)
    {
      return true;
    } else {
      return false;
    }
  }
  
}
