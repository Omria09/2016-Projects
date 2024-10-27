Image buttonpaint = new Image();
Image buttonpara = new Image();
Image buttonmusic = new Image();
Image backimage = new Image();
Image sea = new Image();
Image boat = new Image();
Image para = new Image();
Music song = new Music();
Music landonsea = new Music();
Music LOB = new Music();
//Music winmusic = new Music();
//Music losemusic = new Music();
Text health= new Text();
Text Score= new Text();
Image Gameover = new Image();
Image Inv = new Image();
Image Youwon = new Image();
Ellipse ellipse = new Ellipse();
Rect rect = new Rect();
Rect red = new Rect();
Rect green = new Rect();
Rect blue = new Rect();
Rect random = new Rect();
Rect big = new Rect();
Rect small = new Rect();
Text textrandom = new Text();
Text textbig = new Text();
Text textsmall = new Text();
Text cleartext = new Text();
Text redtext = new Text();
Text bluetext = new Text();
Text greentext = new Text();
Image dbz = new Image();
Image link = new Image();
Image naruto = new Image();
Image fallout = new Image();
Rect images = new Rect();
Text images2 = new Text();
Image dbzbig = new Image();
Image narutobig = new Image();
Image linkbig = new Image();
Image falloutbig = new Image();
Image PATD = new Image();
Image PATD2 = new Image();
Image rapGod = new Image();
Image Trap = new Image();
Music music = new Music();
Image backgroundimg = new Image();
Image stop = new Image();
Image menu = new Image();
int game=0;
int Life=3;
int score1=0;
int all=0;
int Img=0;
int buttons=1;
void setup() {
size(900,700);
background(255,255,255);
  
  menu.setImage("menu.png");
  menu.x=300;
  menu.y=100;
  
  //goBack.setImage("back.png");
//  goBack.x=650;
//  goBack.y=50;
  
  backimage.x=0;
  backimage.y=0;
  backimage.width=width;
  backimage.height=height;
  backimage.setImage("backimage.png");

  buttonpaint.x=50;
  buttonpaint.y=400;
  buttonpaint.width=250;
  buttonpaint.height=125;
  buttonpaint.setImage("buttonpaint.png");

  buttonmusic.x=300;
  buttonmusic.y=400;
  buttonmusic.width=250;
  buttonmusic.height=125;
  buttonmusic.setImage("buttonmusic.png");

  buttonpara.x=550;
  buttonpara.y=400;
  buttonpara.width=250;
  buttonpara.height=125;
  buttonpara.setImage("buttonpara.png");

  sea.setImage("background01.png");
  sea.x=0;
  sea.y=0;
  sea.width = width;
  sea.height = height;

  
  Youwon.setImage("Yourewinner.png");
  Youwon.x=0;
  Youwon.y=0;
  
  Gameover.setImage("gameover.png");
  Gameover.x=0;
  Gameover.y=0;

  boat.setImage("boat.png");
  boat.x=450;
  boat.y=650;

  Inv.setImage("inv.png");
  Inv.x=0;
  Inv.y=710;

  para.setImage("paratrooper05.png");
  para.x=500;
  para.y=50;

  health.x=30;
  health.y=50;
  health.brush=color(255, 0, 0);
  health.alpha=255;
  health.textSize= 50;
  health.font= "Tahoma";
  health.text= "Health:";

  Score.x=30;
  Score.y=120;
  Score.brush=color(0, 255, 0);
  Score.alpha=255;
  Score.textSize= 50;
  Score.font= "Tahoma";
  Score.text= "Score:";
  
  images.x = width/7*0;
  images.y = height/7*5;
  images.brush = color(0,10,20);
  images.width = width/7;
  images.height = height/7;

  small.x = width/7*0;
  small.y = height/7*6;
  small.brush = color(57,10,20);
  small.width = width/7;
  small.height = height/7;

  rect.x = width/7*1;
  rect.y = height/7*6;
  rect.brush = color(0,0,0);
  rect.width = width/7;
  rect.height = height/7;

  red.x = width/7*2;
  red.y = height/7*6;
  red.brush = color(255,0,0);
  red.width = width/7;
  red.height = height/7;

  ellipse.radiusX=10;
  ellipse.radiusY=10;
  ellipse.pen = color(0,255,0);
  ellipse.brush = color(25,255,25);
 
  green.x = width/7*3;
  green.y = height/7*6;
  green.brush = color(0,255,0);
  green.width = width/7;
  green.height = width/7;
 
  blue.x = width/7*4;
  blue.y = height/7*6;
  blue.brush = color(0,0,255);
  blue.width = width/7;
  blue.height = height/7;
                  
  random.x = width/7*5;
  random.y = height/7*6;
  random.brush = color(75,158,25);
  random.width = width/7;
  random.height = height/7;         

  big.x = width/7*6;
  big.y = height/7*6;
  big.brush = color(128,158,95);
  big.width = width/7;
  big.height = height/7;   

  textbig.x= width/7*6;
  textbig.y= height-big.height/2;
  textbig.brush = color(255,255,255);
  textbig.text = "Bigger";
  textbig.alpha = 255;
  textbig.textSize = 25;
  textbig.font = "Tahoma";

  textrandom.x= width/7*5;
  textrandom.y= height-random.height/2;
  textrandom.brush = color(255,255,255);
  textrandom.text = "Random";
  textrandom.alpha = 255;
  textrandom.textSize = 25;
  textrandom.font = "Tahoma";

  textsmall.x= width/7*0;
  textsmall.y= height-small.height/2;
  textsmall.brush = color(255,255,255);
  textsmall.text = "Smaller";
  textsmall.alpha = 255;
  textsmall.textSize = 25;
  textsmall.font = "Tahoma";

  cleartext.x= width/7*1;
  cleartext.y= height-rect.height/2;
  cleartext.brush = color(255,255,255);
  cleartext.text = "Clear";
  cleartext.alpha = 255;
  cleartext.textSize = 25;
  cleartext.font = "Tahoma";

  redtext.x= width/7*2;
  redtext.y= height-red.height/2;
  redtext.brush = color(255,255,255);
  redtext.text = "Red";
  redtext.alpha = 255;
  redtext.textSize = 25;
  redtext.font = "Tahoma";

  bluetext.x= width/7*4;
  bluetext.y= height-blue.height/2;
  bluetext.brush = color(255,255,255);
  bluetext.text = "Blue";
  bluetext.alpha = 255;
  bluetext.textSize = 25;
  bluetext.font = "Tahoma";

  greentext.x= width/7*3;
  greentext.y= height-green.height/2;
  greentext.brush = color(255,255,255);
  greentext.text = "Green";
  greentext.alpha = 255;
  greentext.textSize = 25;
  greentext.font = "Tahoma";

  images2.x= width/7*0;
  images2.y= height-images.height;
  images2.brush = color(255,255,255);
  images2.text = "Stencils";
  images2.alpha = 255;
  images2.textSize = 25;
  images2.font = "Tahoma";                                 
 
  naruto.setImage("naruto.png");
  naruto.x=width/7*1;
  naruto.y=height/7*5;
  naruto.width = width/7;
  naruto.height = height/7;

  link.setImage("link.png");
  link.x=width/7*2;
  link.y=height/7*5;
  link.width=width/7;
  link.height=height/7;
  
  dbz.setImage("dbz.png"); 
  dbz.x=width/7*3;
  dbz.y=height/7*5;
  dbz.width=width/7;
  dbz.height=height/7;
                                    
  fallout.setImage("fallout.png"); //fallout's mini image.
  fallout.x=width/7*4;
  fallout.y=height/7*5;
  fallout.width=width/7;
  fallout.height=height/7;

  falloutbig.setImage("fallout.png"); //fallout's image.
  falloutbig.x=0;
  falloutbig.y=0;
  falloutbig.width=width;
  falloutbig.height=height;                                      
                         
  dbzbig.setImage("dbz.png"); //DBZ's image.
  dbzbig.x=0;
  dbzbig.y=0;
  dbzbig.width=width;
  dbzbig.height=height;

  linkbig.setImage("link.png"); //Link's image.
  linkbig.x=0;
  linkbig.y=0;
  linkbig.width=width;
  linkbig.height=height;

  narutobig.setImage("naruto.png"); //Naruto's image.
  narutobig.x=0;
  narutobig.y=0;
  narutobig.width = width;
  narutobig.height = height;

  stop.setImage("stop.png");
  stop.x=350;
  stop.y=250;
  
  rapGod.setImage("rapGod.png");
  rapGod.x=50;
  rapGod.y=400;
  
  Trap.setImage("Trap.png");
  Trap.x=450;
  Trap.y=400;

  PATD.setImage("PATD.png");
  PATD.x=650;
  PATD.y=400;
  
  PATD2.setImage("PATD2.png");
  PATD2.x=250;
  PATD2.y=400;
  
  backgroundimg.setImage("backgroundimg.png");
  backgroundimg.x=0;
  backgroundimg.y=0;
}

void draw() {

if(buttons==1){
backimage.draw();
menu.draw();
buttonpara.draw();
buttonpaint.draw();
buttonmusic.draw();
}
if (game==2){
  //goBack.draw();
  rect.draw();
red.draw();
blue.draw();
green.draw();
random.draw();
big.draw();
small.draw();
textbig.draw();
textrandom.draw();
textsmall.draw();
cleartext.draw();
redtext.draw();
greentext.draw();
bluetext.draw();
images.draw();
images2.draw();
random.brush=ellipse.brush;
}
if (game==1){
  sea.draw();
  //goBack.draw();
  health.draw();
  boat.draw();
  para.draw();
  Score.draw();
  para.direction=Direction.DOWN;
  para.y=para.y+8;
  if (key == 'a' || key == 'A') {
    if (boat.x+80<width) {
      boat.direction=Direction.LEFT;
      boat.speed=8;
    }
  }
  if (key == 'd' || key == 'D') {
    boat.direction=Direction.RIGHT;
    boat.speed=8;
  }    
  if (key == 'w' || key == 'W') {
    boat.speed=0;
  }
  if (boat.x<-60) {
    boat.x=900;
  }
  if (boat.x>960) {
    boat.x=-60;
  }
  if (Life>0) {
    if (Inv.pointInShape(para.x, para.y)) {
      Life=Life-1;
      all=all+1;
      landonsea.load("land-on-sea.mp3");
      landonsea.play();
      para.y=50;  
      para.x=((int)random(900-100));
    }
  }
  if (para.pointInShape(boat.x,boat.y)){
    LOB.load("land-on-boat.wav");
    LOB.play();
    score1 =score1+1;
    all=all+1;
    para.y=50;
    para.x=((int)random(900-100));
  }
   if (boat.pointInShape(para.x,para.y)){
    LOB.load("land-on-boat.wav");
    LOB.play();
    score1 =score1+1;
    all=all+1;
    para.y=50;
    para.x=((int)random(900-100));
   }
  if (Life==3) {
    health.text= "Health:3";
  }
  if (Life==2) {
    health.text="Health:2";
  }
  if (Life==1){
    health.text="Health:1";
  }
  if (Life==0){
    health.text="Health:0";
  }
  if (score1==0) {
    Score.text="Score:0";
  } 
  if (score1==1) {
    Score.text="Score:1";
  } 
  if (score1==2) {
    Score.text="Score:2";
  }
  if (score1==3) {
    Score.text="Score:3";
  }
  if (score1==4) {
    Score.text="Score:4";
  }
  if (score1==5) {
    Score.text="Score:5";
  }
  if (score1==6) {
    Score.text="Score:6";
  }
  if (score1==7) {
    Score.text="Score:7";
  }
  if (score1==8) {
    Score.text="Score:8";
  }
  if (score1==9) {
    Score.text="Score:9";
  }
  if (Life==0) {
    Gameover.draw();
    //losemusic.load("wha.mp3");
    //losemusic.play();  
  }
  if (all==10) {
    Youwon.draw();
   // winmusic.load("Clapping.mp3");
    //winmusic.play();
  }
}
if (game==3){
backgroundimg.draw();
rapGod.draw();
PATD2.draw();
PATD.draw();
Trap.draw();
stop.draw();
//goBack.draw();
}
}

void mousePressed(){

  if(buttons==1){
  if (buttonpara.pointInShape(mouseX,mouseY)){ 
  buttons=0;
  game=1;
  song.load("song.wav");
  song.play();
   }
  if (buttonpaint.pointInShape(mouseX,mouseY)){ 
  buttons=0;
  game=2;
  background(255,255,255);
   }
  if (buttonmusic.pointInShape(mouseX,mouseY)){ 
  buttons=0;
  game=3;
 }
}
 if (game==2){
 ellipse.x= mouseX; //Paints if the mouse is pressed at the mouseX location.
ellipse.y= mouseY; //Paints if the mouse is pressed at the mouseY location.
  if (rect.pointInShape(mouseX,mouseY)){ //Clears the screen.
    Img=0;
    background(255,255,255);
  }
  if(red.pointInShape(mouseX,mouseY)){ //Red Color.
    ellipse.brush= color(255,0,0);
  }
  if(green.pointInShape(mouseX,mouseY)){ //Green Color.
    ellipse.brush= color(0,255,0);
  }  
  if(blue.pointInShape(mouseX,mouseY)){ //Blue Color.
    ellipse.brush= color(0,0,255);
  }
  if(random.pointInShape(mouseX,mouseY)){ //Random Color.
    ellipse.brush = color((int)random(0-100000000));
  }
  if(big.pointInShape(mouseX,mouseY)& ellipse.radiusX<50){ //Bigger Ellipse.
    ellipse.radiusX=(ellipse.radiusX+2);
    ellipse.radiusY=(ellipse.radiusY+2);
  }
  if(small.pointInShape(mouseX,mouseY)& ellipse.radiusX>2){ //Smaller Ellipse.
    ellipse.radiusX=(ellipse.radiusX-2);
    ellipse.radiusY=(ellipse.radiusY-2);
  }
  if(images.pointInShape(mouseX,mouseY)){ //Opens Mini Images Bar. 
    Img=1;
    dbz.draw();
    naruto.draw();
    link.draw();
    fallout.draw();}
  if(Img==1)
  {                  
      if(fallout.pointInShape(mouseX,mouseY)){ //Fallout picture in full screen.
        falloutbig.draw();
        Img=0;
    }
      if(dbz.pointInShape(mouseX,mouseY)){ //DBZ picture in full screen.
        dbzbig.draw();
        Img=0;
    }
      if(naruto.pointInShape(mouseX,mouseY)){ //Naruto picture in full screen.
        narutobig.draw();
        Img=0;
    }
      if(link.pointInShape(mouseX,mouseY)){ //Link picture in full screen.
        linkbig.draw();
        Img=0;
    }
                                         }                        
 }                                        
  if (game==3){
  if (PATD.pointInShape(mouseX,mouseY)){
  music.stop();
  music.load("PATD.mp3");
  music.play();
  }
  if (PATD2.pointInShape(mouseX,mouseY)){
  music.stop();
  music.load("PATD2.mp3");
  music.play();
  }
  if (Trap.pointInShape(mouseX,mouseY)){
  music.stop();
  music.load("Trap.wav");
  music.play();
  }
  if (rapGod.pointInShape(mouseX,mouseY)){
  music.stop();
  music.load("rapGod.wav");
  music.play();
  }
  if (stop.pointInShape(mouseX,mouseY)){
  music.stop();
  }
  }
 
 }
   void mouseDragged(){
     if(game==2){
    ellipse.x= mouseX; //Follows the mouseX location.
  ellipse.y= mouseY; //Follows the mouseY location.
  ellipse.draw();
     }
}