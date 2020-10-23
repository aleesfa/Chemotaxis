Bacteria[] myBac;  
 void setup()   
 {     
   int x, y, col;
   size(400, 400);
   myBac = new Bacteria[20];
   for(int i = 0; i < myBac.length; i++)
   {
     x = (int) (Math.random() * 200)+200;
     y = (int) (Math.random() * 200)+200;
     col = color(90, 0, 0);
     myBac[i] = new Bacteria(x, y, col);
   }
 }   
 void draw()   
 {   
   background(0);
   fill(3533, 12333, 34);
   ellipse(200, 200, 50, 50);
   //move and show the bacteria   
   for(int i = 0; i < myBac.length; i++)
   {
     myBac[i].show();
     myBac[i].move();
   }
 }  
 class Bacteria    
 {     
   int x, y, col;
   Bacteria(int Xvalue, int Yvalue, int c)
   {
     x = Xvalue;
     y = Yvalue;
     col = c;
   }
   void move()
   {
     //moves the bacteria in a random walk pattern
     if(mouseX > x)
       x = x + (int)(Math.random()*5)-1;
     else
       x = x+ (int)(Math.random() *5)-3;
     if(mouseY > y)
       y = y + (int)(Math.random()*5)-1;
     else
       y = y + (int)(Math.random() *5)-3;
   }
   void show()
   {
     // draws the bacteria using three member variables
     if(dist(x, y, 200, 200) < 50)
     {
       fill(3533, 12333, 34);
     }
     else
     fill(col);
     ellipse(x, y, 40, 40);
   }
 }       
