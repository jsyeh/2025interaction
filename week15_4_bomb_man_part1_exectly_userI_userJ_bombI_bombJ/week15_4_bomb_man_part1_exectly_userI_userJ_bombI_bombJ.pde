// week15_4_bomb_man_part1_exectly_userI_userJ_bombI_bombJ
// 要知道炸彈在哪裡, 人碰到會爆炸
int bombI = 4, bombJ=3, userI = 0, userJ = 0;
void setup(){
  size(400,400);
}
void draw(){
  for(int i=0; i<10; i++){
    for(int j=0; j<10; j++){
      rect(j*40, i*40, 40, 40);
    }
  }
  fill(255,0,0);
  ellipse(bombJ*40+20, bombI*40+20, 30, 30);
  fill(255);
  ellipse(userJ*40+20, userI*40+20, 30, 30);
  if(userJ==bombJ && userI==bombI) background(255,0,0);
}
void keyPressed(){
  if(keyCode==RIGHT) userJ++;
  if(keyCode==LEFT) userJ--;
  if(keyCode==UP) userI--;
  if(keyCode==DOWN) userI++;
}
