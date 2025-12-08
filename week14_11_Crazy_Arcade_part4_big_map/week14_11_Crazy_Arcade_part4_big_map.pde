// week14_11_Crazy_Arcade_part4_big_map
// 修改自 week14_10_Crazy_Arcade_part3_keep_moving_till_hit_wall
// 爆爆王的怪物隨機移動, 不要跳,要順順的移動
int [][] map = {
  {1,1,1,1,1,1,1,1,1,1},
  {1,0,0,0,1,0,0,0,1,1},
  {1,0,1,0,1,0,1,0,1,1},
  {1,0,0,0,0,0,1,0,0,1},
  {1,0,0,0,1,0,0,0,1,1},
  {1,0,1,0,1,0,1,0,1,1},
  {1,0,0,0,0,0,1,0,0,1},
  {1,0,0,0,1,0,0,0,1,1},
  {1,0,1,0,0,0,1,0,1,1},
  {1,1,1,1,1,1,1,1,1,1},
};
int monsterI = 1, monsterJ = 3;
int monster_dI = 0, monster_dJ = 0; // week14_9 新加的
int W, H, S;
void setup(){
  size(250,250);
  H = map.length;
  W = map[0].length;
  S = 250 / W;
}
void draw(){
  background(255);
  for(int i=0; i<H; i++){
    for(int j=0; j<W; j++){
      fill(0);
      if(map[i][j]==1) rect(j*S, i*S, S, S);
    }
  }
  if(frameCount%60==0){ // 經過60frames = 1秒
    monsterI += monster_dI;
    monsterJ += monster_dJ;
    int i3 = monsterI + monster_dI, j3 = monsterJ + monster_dJ;
      if ((monster_dI==0 && monster_dJ==0) || i3<0 || j3<0 || i3>=H || j3>=W || map[i3][j3]==1) { 
      int [] dI = {0,1,0,-1};
      int [] dJ = {1,0,-1,0};
      int [] possible = new int[4];
      int N = 0;
      for(int k=0; k<4; k++){
        int i2 = monsterI+dI[k], j2 = monsterJ+dJ[k];
        if (i2<0 || j2<0 || i2>=H || j2>=W) continue;
        if (map[i2][j2]==1) continue;
        possible[N] = k;
        N++;
      }
      int k = possible[int(random(N))];
      monster_dI = dI[k]; //monsterI += dI[k];
      monster_dJ = dJ[k]; //monsterJ += dJ[k];
    }
  }
  float t = frameCount%60 * S / 60;
  ellipse(monsterJ*S+S/2+monster_dJ*t, monsterI*S+S/2+monster_dI*t, S*0.8, S*0.8);
}
