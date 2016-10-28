
int Yposition=100;
int Xposition=(int)random(1000);
int score=0;
import ddf.minim.*;
Minim minim;  
AudioSample sound;  

void setup(){
size(1000,1000);
minim = new Minim (this);
sound = minim.loadSample("BD.wav", 128);
}
void draw(){
 background(255,000,255);
fill(51,0,221);
if(score>=50){
  text("Great job", 500, 500);
textSize(10);
}else{
  sound.trigger();    
  

ellipse(Xposition,Yposition, 80,100);
Yposition+=10;

if(Yposition>=1000){
checkCatch(Xposition);
Yposition=100; 
Xposition=(int)random(1000);

}

 
rect(mouseX,900,100,100);

fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);


}

void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}