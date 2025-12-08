// week14_21_hit_gopher_part5_lerpColor_countdown
// 修改自 week14_20_hit_gopher_part4_countdown_score
// 示範打地鼠怎麼寫
void setup(){
  size(300, 400);
}
int score = 0;
int [][] gopher = new int[3][3];
void draw(){
  background(#9B691F);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      fill(255); ellipse(100*j+50, 100*i+50, 50, 50);
      if(gopher[i][j]>0){
        if(gopher[i][j]<30) fill(lerpColor(#B97C20, #FFFFFF, 1-gopher[i][j]/30.0));
        else fill(#B97C20); 
        ellipse(100*j+50, 100*i+50, 40, 40);
        gopher[i][j]--; // 用掉秒數
      }
    }
  }
  if(frameCount%60==0){
    int i = int(random(3)), j = int(random(3));
    gopher[i][j] = int(random(30))+30; // 地鼠出現的秒數
  }
  fill(255,0,0); 
  textSize(30);
  text("Score: " + score, 100, 350);
}
void mousePressed(){
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      if(gopher[i][j]>0 && dist(100*j+50, 100*i+50, mouseX, mouseY)<20){
        gopher[i][j]=0;
        score += 10; // 打到,加10分
      }
    }
  }
}
