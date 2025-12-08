// week14_1_airhocky_part1_hit_4_walls
// 想要讓圓球撞到邊邊、會跟手互動
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
  if(dist(x,y,mouseX,mouseY)<60) line(x,y, mouseX, mouseY);
}
