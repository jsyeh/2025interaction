// week14_19_hit_gopher_part3_void_mousePressed_change_gopher
// 修改自 week14_18_hit_gopher_part2_random_gopher_i_j
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
void mousePressed(){
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      if(gopher[i][j]==1 && dist(100*j+50, 100*i+50, mouseX, mouseY)<20) gopher[i][j]=0;
    }
  }
}
