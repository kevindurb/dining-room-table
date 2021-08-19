include <table_top.scad>
include <leg.scad>
$fa = 1;
$fs = 0.2;

leg_length = 30;
table_width = 33;
table_length = 72;

table_top(width = table_width, length = table_length);

translate([1, 1, -1 * (leg_length + 1.5)])
leg(leg_length);

translate([1, table_width - 3.5 - 1, -1 * (leg_length + 1.5)])
leg(leg_length);

translate([table_length - 3.5 - 1, 1, -1 * (leg_length + 1.5)])
leg(leg_length);

translate([table_length - 3.5 - 1, table_width - 3.5 - 1, -1 * (leg_length + 1.5)])
leg(leg_length);
