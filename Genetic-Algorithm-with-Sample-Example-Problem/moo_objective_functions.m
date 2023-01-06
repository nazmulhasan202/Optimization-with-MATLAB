function f = moo_objective_functions (x)
d = x(1); h = x(2); w = x(3);

f(1) = 2*(d*h + h*w) + d*w;
f(2) = -(d*h*w);

end