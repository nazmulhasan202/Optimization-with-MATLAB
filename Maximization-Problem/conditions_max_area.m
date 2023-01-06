function [ineq, eq] = conditions_max_area(dv)
l = dv(1); w = dv(2);
eq(1) = 2*l + w - 100;
ineq = [];
end