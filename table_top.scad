include <lumber.scad>

module table_top(width, length) {
  rotate([-90])
    two_by_six(width);
  rotate([-90])
  translate([length - SIX_BY, 0, 0])
    two_by_six(width);

  width_remainder = width % SIX_BY;
  suggestedWidthLow = width - width_remainder;
  suggestedWidthHigh = width + (SIX_BY - width_remainder);
  assert(width_remainder == 0, str("ERROR: Table width (", table_width, ") isn't an even multiple of board width, Did you mean ", suggestedWidthLow, " or ", suggestedWidthHigh));

  board_count = floor(width / SIX_BY);

  for (i=[1:1:board_count]) {
    rotate([-90, 0, -90])
    translate([-SIX_BY * i, 0, SIX_BY])
      two_by_six(length - (SIX_BY * 2));
  }
}
