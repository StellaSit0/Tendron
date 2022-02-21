public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(50, 300, 300); // initial number of segments in the tendril and starting (x,y) coordinate
  ellipse(400,50,50,50);
}
public void mousePressed()
{
  redraw();
}
