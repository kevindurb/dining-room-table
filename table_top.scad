include <lumber.scad>

module table_top(width, length) {
  rotate([-90])
  translate([0, 0, SIX_BY])
    two_by_six(width - (SIX_BY * 2));
  rotate([-90])
  translate([length - SIX_BY, 0, SIX_BY])
    two_by_six(width - (SIX_BY * 2));

  width_remainder = width % SIX_BY;
  suggestedWidthLow = width - width_remainder;
  suggestedWidthHigh = width + (SIX_BY - width_remainder);
  assert(width_remainder == 0, str("ERROR: Table width (", table_width, ") isn't an even multiple of board width, Did you mean ", suggestedWidthLow, " or ", suggestedWidthHigh));

  board_count = floor(width / SIX_BY);

  for (i=[1:1:board_count]) {
    is_first_or_last = i == 1 || i == board_count;
    board_length = is_first_or_last ? length : length - (SIX_BY * 2);
    x_offset = is_first_or_last ? 0 : SIX_BY;

    rotate([-90, 0, -90])
    translate([-SIX_BY * i, 0, x_offset])
      two_by_six(board_length);
  }
}
