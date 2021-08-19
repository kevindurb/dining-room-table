include <lumber.scad>

module table_top(width = 33, length = 72) {
  rotate([-90])
    two_by_six(width);
  rotate([-90])
  translate([length - 5.5, 0, 0])
    two_by_six(width);

  for (i=[1:1:6]) {
    rotate([-90, 0, -90])
    translate([-5.5 * i, 0, 5.5])
      two_by_six(length - (5.5 * 2));
  }
}
