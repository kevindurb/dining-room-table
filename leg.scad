include <lumber.scad>

module leg(length) {
  four_by_four(length);
}

module bib(table_width, table_length, leg_offset) {
  half_bib_thickness = TWO_BY / 2;
  half_leg_thickness = FOUR_BY / 2;
  short_side_length = table_width - (2 * FOUR_BY) - 2;

  short_sides_translations = [
    [leg_offset + (half_leg_thickness + half_bib_thickness),   leg_offset + FOUR_BY, -TWO_BY],
    [table_length - (half_leg_thickness - half_bib_thickness), leg_offset + FOUR_BY, -TWO_BY]
  ];

  for (translation = short_sides_translations) {
    translate(translation)
    rotate([0, 90, 90])
      two_by_six(short_side_length);
  }
}

module legs(table_width, table_length, table_height, leg_offset) {
  leg_length = table_height - TWO_BY;
  vertical_offset = -1 * (leg_length + TWO_BY);

  leg_translations = [
    [leg_offset,                          leg_offset,                         vertical_offset],
    [leg_offset,                          table_width - FOUR_BY - leg_offset, vertical_offset],
    [table_length - FOUR_BY - leg_offset, leg_offset,                         vertical_offset],
    [table_length - FOUR_BY - leg_offset, table_width - FOUR_BY - leg_offset, vertical_offset]
  ];

  for (translation = leg_translations) {
    translate(translation)
      leg(leg_length);
  }
}
