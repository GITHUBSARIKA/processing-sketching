void setup(){
 size(1000,1000); 
}
int x=500;
int y=500;
double birdYVelocity = 5;
double gravity =0.5;
int pipeXposition=300;
int pipeYposition=600; 
 void draw(){
  background(67,245,148);
  fill(255,0,141);
ellipse(x,y,100,100);
//x+=6;
y+=birdYVelocity;
y+=gravity;
fill(195,10,247);
rect(pipeXposition,pipeYposition,100,1000);
 //fill(255,3,150);
//rect(500,800,100,500);
//fill(15,250,189);
//rect(100,400,100,700);
pipeXposition-=5;

if(pipeXposition<=0){
  int random=(int) random(100,400);
 pipeXposition=width; 
 pipeYposition=random;

}
 if(intersects(x,y,pipeXposition,pipeYposition,100)){
   exit();
 }


if(mousePressed){
  mousePressed();
  
}

}
void mousePressed(){
 y-=birdYVelocity;
 double gravity=10;
 y-=gravity;
 
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}