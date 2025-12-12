class DoorType {

  void Single(float X, float Y, float Width, float Height) {
    stroke(0);
    fill(200, 100, 100);
    float x1 = X + Width*0.5;
    float y1 = Y + Height*0.1;
    float x2 = X + Width*0.1;
    float y2 = Y + Height*0.9;
    float x3 = X + Width*0.9;
    float y3 = Y + Height*0.9;
    triangle(x1, y1, x2, y2, x3, y3);
  }

  void Double(float X, float Y, float Width, float Height) {
    stroke(0);
    fill(100, 200, 100);
    rect(X + Width*0.1, Y + Height*0.1, Width*0.8, Height*0.8);
  }

  void Sliding(float X, float Y, float Width, float Height) {
    stroke(0);
    fill(100, 100, 200);
    ellipse(X + Width*0.5, Y + Height*0.5, Width*0.8, Height*0.8);
  }

  void Rotating(float X, float Y, float Width, float Height) {
    stroke(0);
    fill(200, 200, 100);
    rect(X + Width*0.2, Y + Height*0.2, Width*0.6, Height*0.6);
  }
}
