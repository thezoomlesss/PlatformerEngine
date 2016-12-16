public float x,y, width_char, height_char;
 
  
class character
{
  {                  // curly brackets put here because we are doing assignation in a declaration area
    x= width *0.2f;
    y= height * 0.668f;  
    width_char=70;
    height_char=200;
  }
  character()
  {
    
  }
  
  void display()
  {
    fill(200,0,0);
    ellipse(x, y, width_char, height_char);
  }
}