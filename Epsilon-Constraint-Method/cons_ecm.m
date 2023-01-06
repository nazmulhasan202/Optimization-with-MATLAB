function [g,h] = cons_ecm (x)
d = x(1); h = x(2); w = x(3);
global epsilon_f2
f2 = d*h*w;

g(1) = h-w;
g(2) = 2.5*h - d;
g(3) = epsilon_f2 - f2; % This constraint is included as a part of the epsilon-constrint method

h = [];
end