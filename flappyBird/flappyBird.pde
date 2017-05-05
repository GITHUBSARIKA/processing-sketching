void setup(){
 size(1000,1000); 
}
int x=500;
int y=500;
double birdYVelocity = 10;
double gravity =0.5;

 void draw(){
  background(67,245,148);
  fill(255,0,141);
ellipse(x,y,100,100);
//x+=6;
//y+=birdYVelocity;
y+=gravity;
if(mousePressed){
  mousePressed();
}
}
void mousePressed(){
 y=birdYVelocity;

}