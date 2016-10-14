int Xposition=200;
int Yposition=350;
Car bob=new Car(50, 0, 80, 1);
Car tob=new Car(200, 50, 200, 2);
Car brtb=new Car(300, 300, 100,-3);
void setup(){
size(400, 400);
}
void draw(){
background(238,000,255);
ellipse(Xposition, Yposition, 50, 50);
fill(51, 000, 221);
bob.move();
bob.display();
tob.move();
tob.display();
brtb.move();
brtb.display();
if(intersects(bob)|intersects(tob)|intersects(brtb)){
  Xposition=200;
  Yposition=350;
  
}
if(getY()==50){
  print("winner");
  fill(136,0,85);
  rect(200,200,100,100);
  
}
intersects(tob);
intersects(brtb);
}
 
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        print(Yposition);
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
if(Yposition>350){
Yposition=350;
}
if(Yposition<50){
Yposition=50;
}}
boolean intersects(Car car) {
if ((Yposition > car.getY() && Yposition < car.getY()+50) && (Xposition > car.getX() && Xposition < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}



class Car{ 
int size;
int speed;
int x;
int y;
Car(int size,int x, int y, int speed){ 
  this.size=size; this.x=x; this.y=y; this.speed=speed;
  
}
void display() 
  {
    fill(0,255,0);
    rect( x ,  y , size, 50);
  }
void move(){
x-=speed;
if(x<-size){
 x=400; 
}

else if(x>400){
  x=0;
}
}
int getX(){
  return x;
}
int getY(){
  return y;
}
int getSize(){
  return size;
}




}

  
  
  






