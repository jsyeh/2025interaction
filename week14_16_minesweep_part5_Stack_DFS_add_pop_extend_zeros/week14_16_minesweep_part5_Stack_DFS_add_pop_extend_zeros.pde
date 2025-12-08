// week14_16_minesweep_part5_Stack_DFS_add_pop_extend_zeros
// 修改自 week14_15_minesweep_part4_show_many_zeros_and_not_9_for_ii_for_jj
// 畫出格子了, 但是第一下希望是空格, 把其他的數字都顯示
import java.util.Stack;
int [][]show = new int[10][7]; // 一開始,都不秀
void setup(){
  size(280,400);
  for(int k=0; k<5; k++){ // 要放5個地雷
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
      fill(128); rect(j*40,i*40, 40, 40);
      if(show[i][j]==1){ // 要秀的時候, 才秀數字
        fill(255); rect(j*40,i*40, 40, 40);
        fill(#FF0000); text(map[i][j], j*40+20, i*40+20); 
      }
    }
  }
}
void mousePressed(){
  int i = mouseY/40, j = mouseX/40;
  show[i][j] = 1;
  Stack<Integer> stackI = new Stack<Integer>();
  Stack<Integer> stackJ = new Stack<Integer>();
  if(map[i][j]==0) {
    stackI.add(i);
    stackJ.add(j);
    show[i][j] = 1;
  }
  while(stackI.size()>0){
    i = stackI.pop();
    j = stackJ.pop();
    for(int ii=i-1; ii<=i+1; ii++){
      for(int jj=j-1; jj<=j+1; jj++){
        if(ii<0 || jj<0 || ii>=10 || jj>=7) continue;
        if(map[ii][jj]!=9 && show[ii][jj]==0){
          show[ii][jj]=1;
          stackI.add(ii);
          stackJ.add(jj);
        }
      }
    }
  }
}
