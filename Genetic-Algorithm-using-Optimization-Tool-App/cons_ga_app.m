function [g_ineq, h_eq] = cons_ga_app (x)
d = x(1); h = x(2); w = x(3);

g_ineq(1) = h-w;
g_ineq(2) = 2.5*h - d;

h_eq = [];
end