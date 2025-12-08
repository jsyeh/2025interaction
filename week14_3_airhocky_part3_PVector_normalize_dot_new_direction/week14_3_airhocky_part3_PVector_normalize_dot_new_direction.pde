// week14_3_airhocky_part3_PVector_normalize_dot_new_direction
// 修改自 week14_2_airhocky_part2_help_line_center_center_dx_dy
// 會跟手互動
void setup(){
  size(500,300);
}
float x = 250, y = 150, vx = 1, vy = 0.5;
void draw(){
  background(255);
  float x2 = x+vx, y2 = y+vy;
  if(x2<30 || x2>470) vx = -vx;
  if(y2<30 || y2>270) vy = -vy;
  x += vx;
  y += vy;
  fill(#ffff00); ellipse(x, y, 60, 60);
  fill(#ff0000); ellipse(mouseX, mouseY, 60,60);
  if(dist(x,y,mouseX,mouseY)<60) {
    line(x,y, mouseX, mouseY); // 輔助線
    float dx = x - mouseX; // 推的方向
    float dy = y - mouseY; // 推的方向(法向量N)
    PVector N = new PVector(dx,dy).normalize(); // 單位法向量 Normal
    float nx = N.x, ny = N.y; 
    PVector v = new PVector(vx,vy);
    float dot = PVector.dot(N,v);
    vx += -nx*dot*2; // 利用內積,算出速度向量的改變量
    vy += -ny*dot*2;
    //vx += dx/10; // 比例是亂算的, 因為沒有符合「動量守恆」
    //vy += dy/10;
  }
}
