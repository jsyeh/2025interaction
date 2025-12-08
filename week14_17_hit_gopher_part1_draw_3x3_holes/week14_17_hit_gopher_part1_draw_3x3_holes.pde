// week14_17_hit_gopher_part1_draw_3x3_holes
// 示範打地鼠怎麼寫
void setup(){
  size(300, 300);
}

void draw(){
  background(#9B691F);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      ellipse(100*j+50, 100*i+50, 50, 50);
    }
  }
}
