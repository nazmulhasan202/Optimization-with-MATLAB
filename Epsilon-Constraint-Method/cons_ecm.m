function [g,h] = cons_ecm (x)
d = x(1); h = x(2); w = x(3);
global f2_target

g(1) = h-w;
g(2) = 2.5*h - d;
g(3) = f2_target - d*h*w; % This constraint is included as a part of the epsilon-constrint method

h = [];
end