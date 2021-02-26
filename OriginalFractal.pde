public void setup(){
  size(600,600);
  strokeWeight(3);

}
public void draw(){
  background(0);
  myFractal(300,300,600);
}
public void mousePressed(){
  int s = (int)(Math.random()*255+80);
  stroke(s,0,0);  
}

public void myFractal(int x, int y, int r){
  int a = (int)(Math.random()*255+80);
  int b = (int)(Math.random()*255+80);
  int c = (int)(Math.random()*255+80);
  ellipse(x,y,r,r);
  if(r>10){
  stroke(a,b,c);  
  myFractal(x+50,y,r/2);
  stroke(a,b,c);
  myFractal(x,y+50,r/2);
  stroke(a,b,c);
  myFractal(x-50,y,r/2);
  stroke(a,b,c);
  myFractal(x,y-50,r/2);
  }
}
