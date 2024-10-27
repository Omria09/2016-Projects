Image bg = new Image (); // the background 
Image ground = new Image (); // the ground 
Image bird = new Image (); // the bird 
Image pt = new Image (); // pipe top  
Image pd = new Image (); // pipe button 
Image pt1 = new Image ();  // pipe top1
Image pd1 = new Image (); // pipe button1 
Rect alpha1 = new Rect(); 
Rect stop = new Rect ();  
Image go = new Image(); // game over 
Image birdD = new Image ();
Image bs = new Image ();
Image st = new Image (); 


Music wings = new Music ();
Music scoreS = new Music (); // score sound 


boolean start=true;
boolean lose = false; 
int score;
int score2;
int best;
int ImgNum = 1;
int animationFactor =8;


void setup() { 
  size (900,700);  
  
  wings.load("wing.mp3");
  scoreS.load("hit.mp3");
    
  st.setImage("start-button-305427_640.png");
  st.x=350;
  st.y=450;
  
  bs.setImage("overmenu.png");
  bs.x=320;
  bs.y=120;
  
  stop.x=5;
  stop.y=130;
  stop.width=800;
  stop.height=100;
  
  
  go.setImage("gameOver.png");
  go.x=width/5;
  go.y=height/2;
  
  
  pt.setImage("pipe-top.png");
  pt.x=width-400;
  pt.y=((int) random (-500));
  
  pt1.setImage("pipe-top.png");
  pt1.x=width-0;
  pt1.y=((int) random (-500));
  
  pd.setImage("pipe-bottom.png");
  pd.x=width-400;
  pd.y=pt.y+640;
  
  pd1.setImage("pipe-bottom.png");
  pd1.x=width-0;
  pd1.y=pt1.y+640;
   
  bg.setImage("bg.png");
  bg.x=0;
  bg.y=0;
  
  ground.setImage("ground.png");
  ground.x=0;
  ground.y=604;
  
  bird.setImage("bird.png");
  bird.x=width/5;
  bird.y=height/2;
  
  alpha1.x=0;
  alpha1.y=0;
  alpha1.width=100;
  alpha1.height=800;
  alpha1.alpha=1;
 
  
}

void draw() {
  bg.draw();
  alpha1.draw();
  pt.draw();
  pd.draw();
  pt1.draw();
  pd1.draw();
  ground.draw();
  
  
  
  
  if (start==true) { 
    
    if (bird.y<10) {
   
    bird.direction=Direction.DOWN;
    bird.speed=3;
    
  }
  if (frameCount %animationFactor==0) {
    ImgNum++;
    if (ImgNum>8) {
      ImgNum=1;
    }
  }
  bird.setImage("flappy"+ImgNum+".gif");
  bird.draw();
    
  pt1.direction=Direction.LEFT;
  pt1.speed=2;
  
  pd1.direction=Direction.LEFT;
  pd1.speed=2;

  bird.direction=Direction.DOWN;
  bird.speed=2;

  pt.direction=Direction.LEFT;
  pt.speed=2;
  
  pd.direction=Direction.LEFT;
  pd.speed=2;
  
  
  if (pd.x==0) { 
     pd.x=width-0;
   score++;
   scoreS.play();
   }
   
   if(pd1.x==0) { 
  
  pd1.x=width-0;
  score++;
  scoreS.play();
  }
  
     if (pt.x==0) { 
    pt.x=width-0;
      pt.y=((int) random (-500));
    pd.y=pt.y+640;
    
    
  }
  
  
   if (pt1.x==0) { 
    pt1.x=width-0;
    pt1.y=((int) random (-500));
     pd1.y=pt1.y+640;
  }
 
  }
  



  
  
  fill (#ED1111);
  textSize(32);
  text(""+ score,450,50); 
  fill(0, 102, 153);  
  
  
  if (lose==true) {
    
  bird.speed=0;  
  pt.speed=0;  
  pt1.speed=0;  
  pd.speed=0;
  pd1.speed=0;
  bs.draw();
  fill (#ED1111);
  textSize(32);
  text(""+ score2,550,370); 
  fill(0, 102, 153);  
  
 fill (#ED1111);
  textSize(32);
  text(""+ best,400,370); 
  fill(0, 102, 153);  
  


    
  }
  
  if(pt.pointInShape(bird.x+40,bird.y+40)) {
    bs.x=320;
  bs.y=120;
    st.x=350;
  st.y=450;
  bird.y=ground.y-30;  
  lose=true;
    
 
    
  }
  if(pt1.pointInShape(bird.x+40,bird.y+40)) {
    bs.x=320;
  bs.y=120;
    st.x=350;
  st.y=450;
  bird.y=ground.y-30;  
  lose=true;
    
 
    
  }

if(pd.pointInShape(bird.x+40,bird.y+40)) {
  bs.x=320;
  bs.y=120;
  st.x=350;
  st.y=450;
  bird.y=ground.y-30;  
  lose=true;
    
 
    
  } 
  if(pd1.pointInShape(bird.x+40,bird.y+40)) {
    bs.x=320;
  bs.y=120;
    st.x=350;
  st.y=450;
  bird.y=ground.y-30;  
  lose=true;
    
 
    
  } 
  
  

  
  
if(ground.pointInShape(bird.x+30,bird.y+30)) {
go.draw();
go.direction=Direction.UP;
go.speed=2;
lose=true;

}
if (go.y==50) {   
go.speed=0;
st.draw();


 score2=score; 
 
}
if (best<score) {
 best=score; 
}






}


void mousePressed() {
  if(bg.pointInShape(mouseX,mouseY)) {
 bird.direction=Direction.UP;   
  bird.speed=60;
  wings.play();
  
 
  }
 if(st.pointInShape(mouseX,mouseY)) {
   bird.x=width/5;
  bird.y=height/2;
  pt.x=width-400;
  pt.y=((int) random (-500));
  pt1.x=width-0;
  pt1.y=((int) random (-500));
   pd.x=width-400;
  pd.y=pt.y+640;
   pd1.x=width-0;
  pd1.y=pt1.y+640;
   score=0;
   st.x=1000;
   bs.x=1000;
   
  
   fill (#ED1111);
  textSize(32);
  text(""+ best,100,370); 
  fill(0, 102, 153);  
 lose=false; 
}
}