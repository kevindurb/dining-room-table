include <lumber.scad>

module table_top() {
  rotate([-90])
    two_by_six(84);
  rotate([-90])
  translate([174, 0, 0])
    two_by_six(84);

  for (i=[1:1:6]) {
    rotate([-90, 0, -90])
    translate([-14 * i, 0, 14])
      two_by_six(160);
  }
}
