class Background
{
  color top, bottom;
  
  Background(color a, color b)
  {
    this.top=a;
    this.bottom=b;
  }
  void display()
  {
    fill(this.top);
    beginShape();
    vertex(0,0);
    vertex(width,0);
    vertex(width, height * 0.801);
    vertex(0, height * 0.801);
    endShape(CLOSE);
    
    // make a thin colored line here at height * 0.802
    
    fill(this.bottom);
    beginShape();
    vertex(width, height * 0.803);
    vertex(width, height);
    vertex(0, height);
    vertex(0, height * 0.803);
    endShape(CLOSE);
    
  }
}