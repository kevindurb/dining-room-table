include <table_top.scad>
include <leg.scad>
$fa = 1;
$fs = 0.2;

table_height = 30;
table_width = 38.5;
table_length = 83;

table_top(width = table_width, length = table_length);
legs(table_width, table_length, table_height);
bib(table_width, table_length);
