function [g, h] = constraints(dv)
x = dv(1); y = dv(2); z = dv(3);

g(1) = (5*x - 3*y) - 50;
g(2) = 65 - (2*x+y+7*z);
g(3) = (x^3 + 8*y - z^2) - 300;
g(4) = 80 - (x^2 + y^2 + 2*z);

h(1) = (9*x-7*y+2*z)-55;
h(2) = (4*x-z)-18;
h(3) = (x^2+3*x*y+5*x*z)-519;

end
