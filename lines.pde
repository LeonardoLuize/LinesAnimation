static final int NUM_LINES = 15;
float t;

void setup(){
  background(20);
  size(500, 500);
}

void draw(){
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for (int i = 0; i < NUM_LINES; i++){
    line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
  }
  
  
  t += 0.5;
}

float x1(float t) {
  return sin(t/10)*100 + cos(t / 20) * 200;
}

float y1(float t) {
  return cos(t/10)*100 + sin(t/27) * 150;
}

float x2(float t) {
  return sin(t/40)*50 + cos(t / 20) * 100;
}

float y2(float t) {
  return cos(t/10)*100 + cos(t/27) * 150;
}
