// fun programming #15
// ball bouncing at the window borders

// intial position for our circle
float circle_x = 300;
float circle_y = 20;
// how much to move the circle on each frame
float move_x = 1;
float move_y = -1;

void setup() {
  size(400,200);
  stroke(#D60DFF);
  strokeWeight(7);
}

void draw() {
  background(#21EA73);
  ellipse(circle_x,circle_y,40,40);
  circle_x = circle_x + move_x;
  circle_y = circle_y + move_y;

  if(circle_x > width) {
    circle_x = width;
    move_x = -move_x;
    println("too far right");
  }
  
  if (circle_y > height) {
    circle_y = height;
    println("too far bottom");
    move_y = -move_y;
  }

  if (circle_x < 0) {
    circle_x = 0;
    println("too far left");
    move_x = -move_x;
  }

  if (circle_y < 0) {
    circle_y = 0;
    println("too far top");
    move_y = -move_y;
  }
}