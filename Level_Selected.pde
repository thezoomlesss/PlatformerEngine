class Level_Selected
{
  char[] name=new char[4];
  int index=0;
  
  
  void get_name()
  {
    background(1,2,15);
    fill(100,2,15);
    textSize(65);
    text("Welcome!",width * 0.35f,height  * 0.3f);
    textSize(30);
    text("Select the level number:",width * 0.18f,height  * 0.742f);
    fill(1,2,15);
    stroke(255);
    beginShape();
    vertex(width * 0.48, height  * 0.7f);
    vertex(width * 0.53, height  * 0.7f);
    vertex(width * 0.53, height  * 0.76f);
    vertex(width * 0.48, height * 0.76);
    endShape(CLOSE);
    noStroke();
    textSize(20);
    if(keyPressed && (index<2 || key==ENTER))
    {
      
      delay(200);
      if(key!=BACKSPACE && key!=ENTER)
      {
        name[index]=key;
        name[index]=Character.toUpperCase(name[index]);
        index++;
      }
      if(key==ENTER && index>0) 
      {    
        text_file();           
      }
      
      if(key==BACKSPACE && index>0)  
      {
        index--;
        name[index]=name[3];
      }
    }
    else
    {
      if(key==BACKSPACE && index==2)  
      {
        delay(200);
        index--;
        name[index]=name[2];
      }
    }
    
    fill(200,0,0);
    for(int test=0; test < index; test++)
    {
      if(name[test]!=name[2])
      {
        text(name[test], width * 0.493f+(18*test),height  * 0.74f);
      }
    } // end for
    
    
  }// end get_name()
  
  void text_file()
  {
    String file= String.valueOf(name);
    file=file.trim();
    file=file.toUpperCase();
    // Checking if the file exists
    File f = new File(dataPath("Level"+file+".txt")); 
    if(f.exists())
    {
      Table table = loadTable("Level"+file+".txt", "tsv");
     
      int rowCount = table.getRowCount();   
      color temp_top_color=color(table.getInt(0,0),table.getInt(0,1),table.getInt(0,2));
      color temp_bot_color=color(table.getInt(1,0),table.getInt(1,1),table.getInt(1,2));
      back=new Background(temp_top_color,temp_bot_color);
      test1=1;
      /*for(int i = 0; i < rowCount; i++)
      {
        
      }*/
    }
    else
    {
      println("NO");
    }
    
  }// end void text_file
}// end class