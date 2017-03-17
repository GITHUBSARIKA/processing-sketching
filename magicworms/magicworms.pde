float x;
  float y;

void setup(){
size(800,800);
background(255,255,0);

}
void draw(){
  for(int i=0;i<300;i++){
  x=getWormX(i);
  y=getWormY(i);
  
  ellipse(x+=20,y+=10,10,10);
  }

  
}
float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

