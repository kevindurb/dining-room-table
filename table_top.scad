include <lumber.scad>

module table_top(width = 33, length = 72) {
  rotate([-90])
    two_by_six(width);
  rotate([-90])
  translate([length - 5.5, 0, 0])
    two_by_six(width);

  width_remainder = width % 5.5;
  if (width_remainder != 0) {
    suggestedWidth = width - width_remainder;
    echo(str("WARNING: Table width isn't an even multiple of board width, Did you mean ", suggestedWidth));
  }

  board_count = floor(width / 5.5);

  for (i=[1:1:board_count]) {
    rotate([-90, 0, -90])
    translate([-5.5 * i, 0, 5.5])
      two_by_six(length - (5.5 * 2));
  }
}
