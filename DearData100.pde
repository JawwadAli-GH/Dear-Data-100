String[] data;
DoorType door;
int columns = 10;
int rows = 10;

void setup()
{
  data = loadStrings("dearData100.csv");
  door = new DoorType();

  size(500, 500);
  fill(120);
  stroke(200);

  printArray(data);
}

void draw()
{
  background(255);

  float Width = width/columns;
  float Height = height/rows;
  int index = 0;

  for (int row = 0; row < rows; row++) {
    for (int column = 0; column < columns; column++) {
      
      float X = column * Width;
      float Y = row * Height;

      String type = data[index];

      if (type.equals("single")) {
        door.Single(X, Y, Width, Height);
      }
      
      else if (type.equals("double")) {
        door.Double(X, Y, Width, Height);
      }
      
      else if (type.equals("sliding")) {
        door.Sliding(X, Y, Width, Height);
      }
      
      else if (type.equals("rotating")) {
        door.Rotating(X, Y, Width, Height);
      }

      index++;
    }
  }
}
