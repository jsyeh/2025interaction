// week14_13_minesweep_part2_show_1_8_numbers
// 修改自 week14_12_minesweep_part1_show_numbers_9_mines
// 畫出格子了, 但是第一下希望是空格, 把其他的數字都顯示
void setup(){
  size(280,400);
  for(int k=0; k<10; k++){ // 要放10個地雷
    int i = int(random(10)), j = int(random(7));
    map[i][j] = 9;
  }
  for(int i=0; i<10; i++){
    for(int j=0; j<7; j++){
      if(map[i][j]==9){
        for(int ii=i-1; ii<=i+1; ii++){
          for(int jj=j-1; jj<=j+1; jj++){
            if(ii<0 || jj<0 || ii>=10 || jj>=7) continue;
            if(map[ii][jj]!=9) map[ii][jj]++;
          }
        }
      }
    }
  }
  textSize(30);
  textAlign(CENTER,CENTER);
}
int [][] map = new int[10][7]; 
void draw(){
  for(int i=0; i<10; i++){
    for(int j=0; j<7; j++){
      noFill(); rect(j*40,i*40, 40, 40);
      fill(#FF0000); text(map[i][j], j*40+20, i*40+20);
    }
  }
}
