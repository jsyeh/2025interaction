// week14_8_Crazy_Arcade_part1_map_monster_I_J_random
// 爆爆王的怪物隨機移動
int [][] map = {
  {1,1,1,1,1},
  {1,0,0,0,1},
  {1,0,1,0,1},
  {1,0,0,0,1},
  {1,1,1,1,1},
};
int monsterI = 1, monsterJ = 3;
void setup(){
  size(250,250);
}
void draw(){
  background(255);
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      fill(0);
      if(map[i][j]==1) rect(j*50, i*50, 50,50);
    }
  }
  ellipse(monsterJ*50+25, monsterI*50+25, 40, 40);
  if(frameCount%60==0){ // 經過60frames = 1秒
    int [] dI = {0,1,0,-1};
    int [] dJ = {1,0,-1,0};
    int [] possible = new int[4];
    int N = 0;
    for(int k=0; k<4; k++){
      int i2 = monsterI+dI[k], j2 = monsterJ+dJ[k];
      if (i2<0 || j2<0 || i2>=5 || j2>=5) continue;
      if (map[i2][j2]==1) continue;
      possible[N] = k;
      N++;
      //print(k, ' ');
    }
    //println();
    int k = possible[int(random(N))];
    monsterI += dI[k];
    monsterJ += dJ[k];
  }
}
