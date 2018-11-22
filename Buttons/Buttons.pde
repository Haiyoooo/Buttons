/* feature list
Hover color change
isHover
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
  
  Button()
  {
    position = new PVector(200, 100);
    w = 100;
    h = 20;
    
    // Set button colors here
    normal = color(100);
    highlight = color(200);
    pressed = color(70);
    disabled = color(50);
  }
  
  void update()
  {
    isHover();
  }
  
  void render()
  {
    rectMode(CENTER);
    
    // Change button colours
    if(isHover())
    {
      fill(highlight);
    } else
    {
      fill(normal);
    }
    
    // Button shape
    rect(position.x, position.y, w, h);
  }
  
  boolean isHover()
  {
    // Check if mouse is hovering over the button
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
