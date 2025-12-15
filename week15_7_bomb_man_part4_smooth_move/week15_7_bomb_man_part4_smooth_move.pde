// week15_7_bomb_man_part4_smooth_move
// 修改自 week15_6_bomb_man_part3_double
// 要知道炸彈在哪裡, 人碰到會爆炸
int bombI = 4, bombJ=3, userI = 0, userJ = 0;
int dI = 0, dJ = 0, dII = 0, dJJ = 0;
void setup(){
  size(400,400);
}
void draw(){
  for(int i=0; i<10; i++){
    for(int j=0; j<10; j++){
      fill(255);
      rect(j*40, i*40, 40, 40);
      if( abs(j-bombJ)<=2 && i==bombI) fill(255,0,0,128);
      else if( abs(i-bombI)<=2 && j==bombJ) fill(255,0,0,128);
      rect(j*40, i*40, 40, 40);
    }
  }
  fill(255,0,0);
  ellipse(bombJ*40+20, bombI*40+20, 30, 30);
  fill(255);
  ellipse(userJ*40+20 + dJ*t, userI*40+20 + dI*t, 30, 30);
  t++;
  if(t%41==40) {
    userJ += dJ;
    userI += dI;
    t=0;
    dI = dII;
    dJ = dJJ;
  }
  if(userJ==bombJ && userI==bombI) background(255,0,0, 128);
  if( abs(userJ-bombJ)<=2 && userI==bombI) background(255,0,0, 128);
  if( abs(userI-bombI)<=2 && userJ==bombJ) background(255,0,0, 128);
}
int t = 0;
void keyPressed(){
  if(keyCode==RIGHT) {dII = 0; dJJ = 1; } //userJ++;
  if(keyCode==LEFT) {dII = 0; dJJ = -1; } //userJ--;
  if(keyCode==UP) {dII = -1; dJJ = 0; } //userI--;
  if(keyCode==DOWN) {dII = 1; dJJ = 0; } //userI++;
}
void keyReleased(){
  dII = 0;
  dJJ = 0;
}
