include <lumber.scad>

module table_top(width = 33, length = 72) {
  rotate([-90])
    two_by_six(width);
  rotate([-90])
  translate([length - 5.5, 0, 0])
    two_by_six(width);

  width_remainder = width % 5.5;
  suggestedWidthLow = width - width_remainder;
  suggestedWidthHigh = width + (5.5 - width_remainder);
  assert(width_remainder == 0, str("ERROR: Table width isn't an even multiple of board width, Did you mean ", suggestedWidthLow, " or ", suggestedWidthHigh));

  board_count = floor(width / 5.5);

  for (i=[1:1:board_count]) {
    rotate([-90, 0, -90])
    translate([-5.5 * i, 0, 5.5])
      two_by_six(length - (5.5 * 2));
  }
}
