// week14_18_hit_gopher_part2_random_gopher_i_j
// 修改自 week14_17_hit_gopher_part1_draw_3x3_holes
// 示範打地鼠怎麼寫
void setup(){
  size(300, 300);
}
int [][] gopher = new int[3][3];
void draw(){
  background(#9B691F);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      fill(255); ellipse(100*j+50, 100*i+50, 50, 50);
      if(gopher[i][j]==1){
        fill(#B97C20); ellipse(100*j+50, 100*i+50, 40, 40);
      }
    }
  }
  if(frameCount%60==0){
    int i = int(random(3)), j = int(random(3));
    gopher[i][j] = 1;
  }
}
