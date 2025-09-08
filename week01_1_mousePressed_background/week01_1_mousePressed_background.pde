// week01_1_mousePressed_background
// 桌面-Processing資料夾, 啟動
// File-Preference 字型放大
void setup(){ // 想設定視窗大小
  size(500, 500);
}
void draw(){
  // 用mouse來互動
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
} // 按「三角形」執行Run
//File-Save As 存到桌面 week01_1_mousePressed_background
