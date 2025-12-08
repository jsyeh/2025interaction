// week14_5_airhocky_part5_friction
// 修改自 week14_4_airhocky_part4_mouse_move_velocity
// 把手的速度,也考慮進去
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
  vx *= 0.99; // friction 摩擦力,讓速度變慢
  vy *= 0.99;
  fill(#ffff00); ellipse(x, y, 60, 60);
  fill(#ff0000); ellipse(mouseX, mouseY, 60,60);
  if(dist(x,y,mouseX,mouseY)<60) {
    line(x,y, mouseX, mouseY); // 輔助線
    float dx = x - mouseX; // 推的方向
    float dy = y - mouseY; // 推的方向(法向量N)
    PVector N = new PVector(dx,dy).normalize(); // 單位法向量 Normal
    float nx = N.x, ny = N.y; 
    PVector v = new PVector(vx,vy);
    PVector mm = new PVector(mouseX-pmouseX, mouseY-pmouseY); // mouse移動的速度
    float dot = PVector.dot(N,v);
    float dot2 = PVector.dot(N,mm); // 不太確定 dot2 的量是不是對的
    vx += -nx*dot*2 + nx*dot2*2; // 利用內積,算出速度向量的改變量
    vy += -ny*dot*2 + nx*dot2*2; // 不太確定 dot2 的量是不是對的
  }
}
