Ship ship1 = new Ship(300.0,300.0);
Ship ship2 = new Ship(300.0,300.0);
//ship ship2;
float posx1 = random(41, 326+285);
float posy1 = random(25, 600-(600-(570+25)));
float angle=0;
float steps=0;
int shipsteps=0;
int shipangle=0;
int rsteps;
int or = 0;

PImage ship;
PImage bearing_bg;
PImage bearing_fg;
//PImage speed;
PImage speedometer;
PImage bg;
PImage scanner;

///////////////////////////////////////////////



float step=0;
float dir=0;
float a=0;
int run=0;
int fire=0;

float step1=0;
float dir1=0;
float a1=0;
int run1=0;
int fire1=0;

int i=0;

int width_rd=650;
int height_rd=620;

float  pos_ax=0;
float  pos_ay=0;
float  pos_bx=0;
float  pos_by=0;

float  pos_ax1=0;
float  pos_ay1=0;
float  pos_bx1=0;
float  pos_by1=0;
//////////////////////////////////////////////

void setup()
{
  size(800, 600);
  frameRate(13);
  background(0);
  // ship = loadImage("ship1.png");
  bearing_bg = loadImage("bearing_bg.png");
  bearing_fg = loadImage("bearing_fg.png");
  speedometer = loadImage("speed_bg.png");
  bg = loadImage("Radar_screen.jpg");
  // scanner = loadImage("scan_mask_color.png");
  image(bg, 0, 0);


  fill(0, 40, 20);
  ellipse(326, 316, 520, 520);
  fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));

   rect(pos_bx, pos_by, 6, 6);//go forward 200 pixels
 rect(pos_bx1, pos_by1, 6, 6);
 
 
}

void draw()
{  

  if (i==0)
  {
    angle=dir;
    steps=step;
  }
  if (i==1)
  {
    angle=dir1;
    steps=step1;
  }
  // angle=0;
  //steps=0;

  rectMode(CENTER);
  //background(0);


  image(bearing_bg, 600, 400);
  image(speedometer, 600, 0);
  //fill(0, 50, 0);
  //ellipse(326, 310, 520, 520);
  fill(255, 0, 0);
  //image(ship,posx1,posy1);
  ellipse(600+193/2, 0+193/2, 20, 20);
  //image(bearing_fg,0,0);
  //println(angle);
  stroke(255, 0, 0);

  pushMatrix();
  translate(696, 495);

  //rect(0, 0, 50, 50); // Black rectangle
  rotate(radians(angle));
  //image(ship, -8, -16);
  image(bearing_fg, -(124/2), -(124/2));
  popMatrix();
  //rotate(radians(angle));
  /////////////////////////////////////////////
  pushMatrix();
  translate(600+193/2, 0+193/2); 
  rotate(radians(steps));
  strokeWeight(3);
  line(0, 0, 0, -(110/2));
  strokeWeight(1);
  //fill(255, 0, 0);
  //triangle(-5, -(130/2-10), 0, -(130/2), 5, -(130/2-10));
  //fill(255, 0, 0);
  popMatrix();
  //delay(20);

  //pushMatrix();
  //translate(posx1, posy1); 
  //rotate(radians(shipangle));
  //image(ship, -(20/2), -(50/2));
  //popMatrix();
  //delay(20);
  ///////////////////////////////////////////////



  noFill();
  stroke(30, 95, 30);
  for (int i=0; i<7; i++)
    ellipse(width_rd/2, height_rd/2, i*80, i*80);
  line(width_rd/2, 0, width_rd/2, height_rd);
  line(0, height_rd/2, width_rd, height_rd/2);


  noFill();
  //stroke(60, 185, 60);
  //pushMatrix();
  //translate(255+70, 275+35);
  //rotate(frameCount*0.01);
  //image(scanner, -255, -275);
  //popMatrix(); 

  //repeat
  fill(0, 40, 20, 8);
  //ellipse(600+193/2, 0+193/2, 20, 20);
  // ellipse(326, 310, 520, 520);

  //stroke(100, 255, 100);
  stroke(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
  line(pos_ax, pos_ay, pos_bx, pos_by);
  line(pos_ax1, pos_ay1, pos_bx1, pos_by1);
  noStroke();
  fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));

  if (run1==1 && i==1)
  {
   
    ship2.right(radians(dir1));
    //turn 30 degrees to the left
    a1=a1+dir1;
    ship2.forward(step1); //go forward 200 pixels
    println("x:"+pos_bx1);
    println("y:"+pos_by1);
    text("("+str(round(pos_bx1))+","+str(round(pos_by1))+")"+","+str(round(a1))+"PLAYER A", pos_bx1+10, pos_by1-10);
    rect(pos_bx1, pos_by1, 6, 6);
    step1=0;
    dir1=0;
    run1=0;

    i=0;

    delay(10);
  }
  if (run==1 && i==0)
  {
  
    ship1.right(radians(dir));
    //turn 30 degrees to the left
    a=a+dir;
    ship1.forward(step);
    println("r");
    text("("+str(round(pos_bx))+","+str(round(pos_by))+")"+","+str(round(a))+"PLAYER B", pos_bx+10, pos_by-10);
    rect(pos_bx, pos_by, 6, 6);//go forward 200 pixels

    step=0;
    dir=0;
    run=0;

    i=1;

    delay(10);
  }

  if (fire==1 && i==0)
  {
     fill(0, 40, 20, 8);
  //ellipse(600+193/2, 0+193/2, 20, 20);
  // ellipse(326, 310, 520, 520);

  //stroke(100, 255, 100);
  //stroke(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
 stroke(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
  //noStroke();
  //fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
    ship1.right(radians(dir));
    //turn 30 degrees to the left
    //a1=a1+dir;
    ship1.forward(step); //go forward 200 pixels
     line(pos_ax, pos_ay, pos_bx, pos_by);
      if (pos_bx > pos_bx1 - 10 && pos_bx < pos_bx1 + 10)
    {
       if (pos_by > pos_by1 - 10 && pos_by < pos_by1 +10)
       {
         println("posbx1: "+pos_bx1);
         println("posby1: "+pos_by1);
        line(pos_bx-12,pos_by-12,pos_bx+12,pos_by+12);
        line(pos_bx-12,pos_by+12,pos_bx+12,pos_by-12);
        delay(2000);
         fill (0,0,0,200);
         rect(width/2,height/2,800,600);
         fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
         textSize(70);
         text("PLAYER A HAS BEEN",50,300);
         text("DEFEATED",100,500);
        // delay(10000);
         //exit();
       }
    }
     //line(pos_ax1, pos_ay1, pos_bx1, pos_by1);
    ship1.forward(0.0-step);
   // println("x:"+pos_bx1);
   // println("y:"+pos_by1);
   // text("("+str(round(pos_bx1))+","+str(round(pos_by1))+")"+","+str(round(a1)), pos_bx1+10, pos_by1-10);
    //rect(pos_bx1, pos_by1, 6, 6);
    step=0;
    dir=0;
    fire=0;

    
   
i=1;
    delay(10);
  }
  if (fire1==1 && i==1)
  {
     fill(0, 40, 20, 8);
  //ellipse(600+193/2, 0+193/2, 20, 20);
  // ellipse(326, 310, 520, 520);

  //stroke(100, 255, 100);
  //stroke(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
 stroke(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
  //noStroke();
  //fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
    ship2.right(radians(dir1));
    //turn 30 degrees to the left
    
    //a1=a1+dir;
    ship2.forward(step1);
    line(pos_bx1-12,pos_by1-12,pos_bx1+12,pos_by1+12);//go forward 200 pixels
     line(pos_ax1, pos_ay1, pos_bx1, pos_by1);
     if (pos_bx1 > pos_bx - 10 && pos_bx1 < pos_bx +10)
    {
       if (pos_by1 > pos_by - 10 && pos_by1 < pos_by + 10)
       {
          println("posbx: "+pos_bx);
         println("posby: "+pos_by);
        //line(300,300,400,400);
        line(pos_bx-12,pos_by+12,pos_bx+12,pos_by-12);
        delay(2000);
         fill (0,0,0,200);
         
         rect(width/2,height/2,800,600);
         fill(30*abs(sin(frameCount*0.2)), 100+155*abs(sin(frameCount*0.2)), 20+135*abs(sin(frameCount*0.2)));
         textSize(70);
         text("PLAYER B HAS BEEN",50,300);
         text("DEFEATED",100,500);
        // delay(10000);
         //exit();
       }
    }
     //line(pos_ax1, pos_ay1, pos_bx1, pos_by1);
    ship2.forward(0.0-step1);
   // println("x:"+pos_bx1);
   // println("y:"+pos_by1);
   // text("("+str(round(pos_bx1))+","+str(round(pos_by1))+")"+","+str(round(a1)), pos_bx1+10, pos_by1-10);
    //rect(pos_bx1, pos_by1, 6, 6);
    step1=0;    dir1=0;
    fire1=0;

    
     
    i=0;
    delay(10);
  }

  str(pos_by);
}


void keyPressed() 
{
  if (key == CODED) 
  {
    if (keyCode ==UP) 
    {
      if (i==0)
      {
        step = step+1;
      } else if (i==1)
      {
        step1 = step1+1;
      }
      //step = step+1;
    } else  if (keyCode == DOWN) 
    {
      if (i==0)
      {
        step = step-1;
      } else if (i==1)
      {
        step1 = step1-1;
      }
    } else if (keyCode == LEFT) 
    {
      if (i==0)
      {
        dir=dir-1 ;
      } else if (i==1)
      {
        dir1=dir1-1 ;
      }
    } else if (keyCode == RIGHT) 
    {
      if (i==0)
      {
        dir=dir+1 ;
      } else if (i==1)
      {
        dir1=dir1+1 ;
      }
    }
  } else if (key == ENTER) 
  {
    if (i==0)
    {
      run=1;
      or=1;
    } else if (i==1)
    {
      or=0;
      run1=1;
    }
  } else if (key == BACKSPACE) 
  {
    if (i==0)
    {
      fire=1;
      or=1;
    } else if (i==1)
    {
      fire1=1;
      or=0;
    }
  }

  println("step: "+step1);
  println("dir: "+dir1);
  println("run: "+run1);
}

// Below are utility functions to calculate new positions and orientations 
// when moving forward or turning. You don't need to change these.
