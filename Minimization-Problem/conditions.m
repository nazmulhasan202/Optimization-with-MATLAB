function [ineq, eq] = conditions(dv)
d = dv(1); h = dv(2); w = dv(3);
eq = d*h*w - 60;
ineq = [];
end