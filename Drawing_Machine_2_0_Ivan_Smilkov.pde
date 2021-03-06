void setup() {
  size(1200, 800);
  background(80, 15, 15);
  strokeWeight(20);
  
  stroke(100, 100, 100);
  line(0, 10, 1200, 10);
  line(0, 133, 1200, 133);
  line(0, 257, 1200, 257);
  line(0, 380, 1200, 380);
  line(0, 517, 1200, 517);
  line(0, 654, 1200, 654);
  line(0, 790, 1200, 790);

  //1st vertical lines
  line(400, 0, 400, 133);
  line(800, 0, 800, 133);
  line(400, 257, 400, 380);
  line(800, 257, 800, 380);
  line(400, 517, 400, 654);
  line(800, 517, 800, 654);

  //2nd vertical lines
  line(200, 133, 200, 257);
  line(600, 133, 600, 257);
  line(1000, 133, 1000, 257);
  line(200, 380, 200, 517);
  line(600, 380, 600, 517);
  line(1000, 380, 1000, 517);
  line(200, 654, 200, 790);
  line(600, 654, 600, 790);
  line(1000, 654, 1000, 790);

  for (int i=0; i<700; i++) {
    strokeWeight(3);
    stroke(90, 90, 90);
    point(random(1200), random(800));
  }

  for (int i=0; i<700; i++) {
    strokeWeight(3);
    stroke(90, 20, 20);
    point(random(1200), random(800));
  }
  
  for (int i=0; i<700; i++) {
    strokeWeight(3);
    stroke(120, 30, 30);
    point(random(1200), random(800));
  }
  
  print("          Welcome to my graffiti simulator, click and drag to spray paint\nPress R for Red, G for Green, B for Blue, C for Cyan, P for Pink, and Y for Yellow\n                          or press S to save a screenshot");
}
void draw() {

  float randColor = random(220, 255);
  frameRate(30);
  float mouseDist;
  mouseDist = dist(pmouseX, pmouseY, mouseX, mouseY);
  
  if(mousePressed == true){
    if(key == 'b' || key == 'B') {
      fill(0, 0, randColor);
      stroke(0, 0, randColor);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else if(key == 'r' || key == 'R') {
      fill(randColor, 0, 0);
      stroke(randColor, 0, 0);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else if(key == 'g' || key == 'G') {
      fill(0, randColor, 0);
      stroke(0, randColor, 0);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else if(key == 'p' || key == 'P') {
      fill(randColor, 0, randColor);
      stroke(randColor, 0, randColor);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else if(key == 'c' || key == 'C') {
      fill(0, randColor, randColor);
      stroke(0, randColor, randColor);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else if(key == 'y' || key == 'Y') {
      fill(randColor, randColor, 0);
      stroke(randColor, randColor, 0);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
    else{
      fill(randColor, randColor, randColor);
      stroke(randColor, randColor, randColor);
      ellipse(mouseX, mouseY, mouseDist+40, mouseDist+40);
    }
  }
  
}
void keyPressed(){
   println("pressed");
    if(key == 's' || key == 'S'){
      saveFrame("Graffiti-##.png");
    }
 }
