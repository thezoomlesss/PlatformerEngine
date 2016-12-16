void setup()
{
  fullScreen();
  charact= new character();
  test= new Level_Selected();
  background(0);
}

Level_Selected test;
Background back;
character charact;
int test1=0;   // This is a condition so we can run the game. Later we'll have game state
void draw()
{
  if (test1==0)test.get_name();
  else 
  {
    back.display();
    charact.display();
  }
}

void keyPressed()
{
  if(keyCode==LEFT || key=='A' || key=='a')
  {
    if(!(x<(width_char/2)+10))
    {
      x-=5;
    }
  }
  else
  {
    if(keyCode==RIGHT || key=='D' || key=='d')
    {
      x+=5;
    }
    
  }
}