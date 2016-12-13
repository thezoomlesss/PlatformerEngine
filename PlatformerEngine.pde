void setup()
{
  fullScreen();
  background(0);
}
Level_Selected test= new Level_Selected();
Background back;
int test1=0;
void draw()
{
  if (test1==0)test.get_name();
  else back.display();
  
}