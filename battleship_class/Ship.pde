class Ship
{
  PVector loc; //current location
  float orientation; //current orientation
  Ship(float xpos, float ypos)
  {
     loc = new PVector(xpos, ypos); //starting position is at center
     orientation = radians(90); //starting orientation is at 90 degrees

  }
  void forward(float pixels) //calculate positions when moving forward
  {
    PVector start = loc;
    PVector end = PVector.add(loc, polar(pixels, orientation));
    line1(start, end);
    loc = end;
  }
  
  void left(float theta) //calculate new orientation
  {
    orientation += theta;
  }
  
  void right(float theta)  //calculate new orientation
  {
    orientation -= theta;
  }
  
  void jumpTo(int x, int y) //jump directly to a specific position
  {
    loc = new PVector(x, y);
  }
  
  void line1(PVector a, PVector b) //new line function with PVectors. used by forward function
  {
   if (or == 1)
   {
    pos_ax=a.x;
    pos_ay=a.y;
    pos_bx=b.x;
    pos_by=b.y;
   }
   if (or == 0)
   {
    pos_ax1=a.x;
    pos_ay1=a.y;
    pos_bx1=b.x;
    pos_by1=b.y;
   }
  }
  
  PVector polar(float r, float theta) //converts an angle and radius into a vector
  {
    return new PVector(r*cos(theta), r*sin(-theta)); // negate y for left handed coordinate sys
  }
 
}
