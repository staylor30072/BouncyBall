//Declare variables
float a;
float b;
float c;
float ty;
float tx;
float Xspeed;
float Yspeed;
float x;
float y;
float gravity= 5;
//Sets size of program

void setup(){
    background(250);
    size(600,600);

//Set initial value of variables

    x=1;
    y=1;
    //Speed of ball
    Xspeed=15;
    Yspeed=20;
    frameRate(60);
    tx=200;
    ty=200;
    //Sets intial color of circle
    a=255;
    b=102;
    c=255;
}
void draw(){
    //Prevents trace
    background(250);
    //fills rectangle
    fill(255,102,255);
    //Draws shapes
    rect(tx,ty,200,200);
    fill(a,b,c);
    ellipse(x,y,50,50);
    //Makes circle move
    x=x+Xspeed;
    y=y+Yspeed;
    //Prevents circle from running off screen
    if(x>=width){
        Xspeed=-abs(Xspeed);
    }
    if(x<=0){
      Xspeed*=-1;
    }
    if(y>=height){
        Yspeed=-abs(Yspeed);
    }
    if(y<=0){
      Yspeed*=-1;
    }
    //Makes circle change colors once in touch with rectangle
    if(x>=tx&&x<=tx+200&&y>=ty&&y<=ty+200){
        a=255;
        b=255;
        c=255;
    //if not in touch with rectangle do this    
    }else{
        a=255;
        b=102;
        c=255;
    }
    if(y<height+50){
     Yspeed+=gravity;
    }
}