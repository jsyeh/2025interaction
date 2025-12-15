// week15_3_NS_SHAFT_show_board
// 修改自 week15_2_NS_SHAFT_draw_blood
// 小朋友下樓梯 碰到上面的尖刺, 會損血
void setup(){
  size(500, 400);
  for (int i=0; i<20; i++) {
    boardX[i] = int(random(300-80));
    boardY[i] = 60*i;
  }
}
int []boardX = new int[20];
int []boardY = new int[20];
int blood = 150; // 血條
int x = 150, y=150, x0=30, y0=90;
void draw(){
  background(0);
  fill(255,247,47); // 血條
  stroke(255,0,0); // 血條的框
  strokeWeight(1);
  for (int i=0; i<15; i++){
    if (blood > i*10){
      rect(80+5*i, 60, 5, 20);
    }
  }
  noStroke(); // 不要有紅色的框
  fill(0,2,89);
  rect(30, 90, 300, 300);
  for(int i=0; i<20; i++){
    fill(255);
    triangle(x0+i*15, y0, x0+7+i*15, y0+10, x0+14+i*15, 90);
  }
  for (int i=0; i<10; i++) {
    rect( x0+boardX[i], y0+boardY[i], 80, 20); 
  }
  x = mouseX - x0;
  y = mouseY - y0;
  ellipse(x+30, y+90, 30,30);
  if( abs(mouseY-90) < 25 ){
    blood--;
  }
  if(blood<=0) { // game over
    fill(255, 0, 0);
    rect(100,100, 300, 200);
    fill(255);
    textSize(80);
    text("Game Over", 100, 190);
  }
}
