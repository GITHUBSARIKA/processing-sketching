        void setup(){
          
         size(1000,1000); 
         fill(255,107,17);
ellipse(250,250,400,400);
fill(255,0,0);
ellipse (250,250,350,350);
fill(255,255,0);
ellipse(250,250,300,300);
          
          
        }
          void draw(){
                 PImage olive = loadImage("olive.ppm.gif");  
    image(olive, 0, 0);
     

            
            
            
            
           PImage pepperoni = loadImage("pepperoni.ppm.gif") ; 
    image(pepperoni, mouseX, mouseY);
 
      
     
            
            
            
            
            
            
          }
