// week15_1_shooting_game_bulletX_bulletY
// 射擊遊戲
int [] bulletX = new int[500];
int [] bulletY = new int[500];
int N = 0;
PImage imgMe;
void setup(){
  size(300,500);
  imgMe = loadImage("me.png");
  imageMode(CENTER);
}
float x, y;
void draw(){
  background(205,255,254);
  for (int i=0; i<N; i++) {
    ellipse(bulletX[i], bulletY[i], 3, 10);
    bulletY[i] -= 2;
    if (bulletY[i]<-5) { // 子彈超過上界, 要回收
      for (int k=i; k<N-1; k++) {
        bulletX[k] = bulletX[k+1];
        bulletY[k] = bulletY[k+1];
      }
      N--;
    }
  }
  image(imgMe, mouseX, mouseY);
  if (mousePressed) {
    bulletX[N] = mouseX;
    bulletY[N] = mouseY;
    N++;
  }
}
