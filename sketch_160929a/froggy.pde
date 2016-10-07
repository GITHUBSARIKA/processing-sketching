int Xposition=200;
int Yposition=350;
void setup(){
size(400, 400);
}
void draw(){
background(238,000,255);
ellipse(Xposition, Yposition, 50, 50);
fill(51, 000, 221);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      Yposition-=25;
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        Yposition+=25;
      }
      else if(keyCode == RIGHT)
      
      {
       //Frog X position goes right
       Xposition+=25;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        Xposition-=25;
      }
      outside();
   }
}
void outside(){
if(Xposition>350){
Xposition=350;
}
else if(Xposition<50){
Xposition=50;
}
if(Yposition>350)
Yposition=350;
}
if(Yposition<50)
Yposition=50;
class Car{
int size;
int speed;
int x;
int y;
Car(200,200,
  
  
}














