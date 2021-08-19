module rounded_box(points, radius, height){
    hull(){
        for (p = points){
            translate(p) cylinder(r=radius, h=height);
        }
    }
}
module board(x = 0, y = 0, z = 0) {
  radius = 0.25;
  points = [
    [0 + radius, 0 + radius, 0],
    [x - radius, 0 + radius, 0],
    [0 + radius, y - radius, 0],
    [x - radius, y - radius, 0]
  ];
  color("#c88f4f")
    rounded_box(points, radius, z);
}

module two_by_six(length = 0) {
  board(x = 5.5, y = 1.5, z = length);
}

module four_by_four(length = 0) {
  board(x = 3.5, y = 3.5, z = length);
}
