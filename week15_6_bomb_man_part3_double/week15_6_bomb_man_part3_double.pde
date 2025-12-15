// week15_6_bomb_man_part3_double
// 修改自 week15_5_bomb_man_part2_up_down_left_right
// 要知道炸彈在哪裡, 人碰到會爆炸
int bombI = 4, bombJ=3, userI = 0, userJ = 0;
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
  ellipse(userJ*40+20, userI*40+20, 30, 30);
  if(userJ==bombJ && userI==bombI) background(255,0,0, 128);
  if( abs(userJ-bombJ)<=2 && userI==bombI) background(255,0,0, 128);
  if( abs(userI-bombI)<=2 && userJ==bombJ) background(255,0,0, 128);
}
void keyPressed(){
  if(keyCode==RIGHT) userJ++;
  if(keyCode==LEFT) userJ--;
  if(keyCode==UP) userI--;
  if(keyCode==DOWN) userI++;
}
