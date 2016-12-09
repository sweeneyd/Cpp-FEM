// Gmsh project created on Thu Dec  8 20:18:21 2016
lc1 = 10;
lc2 = 1;
Point(1) = {-100, -100, 0, lc1};
Point(2) = {100, -100, 0, lc1};
Point(3) = {100, 100, 0, lc1};
Point(4) = {-100, 100, 0, lc1};
Point(5) = {0, 0, 0, lc2};
Point(6) = {10, 0, 0, lc1};
Circle(1) = {5, 5, 6};
Circle(2) = {5, 6, 5};
Delete {
  Line{2};
}
Circle(2) = {5, 5, 6};
Circle(3) = {6, 5, 6};
Line(4) = {1, 2};
Line(5) = {2, 3};
Line(6) = {3, 4};
Line(7) = {4, 1};
Line Loop(8) = {6, 7, 4, 5};
Line Loop(9) = {3};
Plane Surface(10) = {8, 9};
Plane Surface(11) = {9};
Physical Line(12) = {4};
Physical Line(13) = {5};
Physical Line(14) = {6};
Physical Line(15) = {7};
Physical Surface(16) = {11};
Physical Surface(17) = {10};
