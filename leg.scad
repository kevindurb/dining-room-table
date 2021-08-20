include <lumber.scad>

leg_width = 3.5;

module leg(length = 30) {
  four_by_four(length);
}

module bib(table_width, table_length) {
  translate([(1 + (leg_width / 2) + 0.75), (1 + leg_width), -1.5])
  rotate([0, 90, 90])
    two_by_six(table_width - (2 * leg_width) - 2);

  translate([table_length - ((leg_width / 2) + 0.25), (1 + leg_width), -1.5])
  rotate([0, 90, 90])
    two_by_six(table_width - (2 * leg_width) - 2);
}

module legs(table_width, table_length, table_height) {
  leg_length = table_height - 1.5;

  translate([1, 1, -1 * (leg_length + 1.5)])
    leg(leg_length);

  translate([1, table_width - 3.5 - 1, -1 * (leg_length + 1.5)])
    leg(leg_length);

  translate([table_length - 3.5 - 1, 1, -1 * (leg_length + 1.5)])
    leg(leg_length);

  translate([table_length - 3.5 - 1, table_width - 3.5 - 1, -1 * (leg_length + 1.5)])
    leg(leg_length);
}
