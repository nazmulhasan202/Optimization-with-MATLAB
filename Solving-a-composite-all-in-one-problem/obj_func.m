function f = obj_func(dv)
x = dv(1); y = dv(2); z = dv(3);
f = 4*x^2 + 3*y^2 + 5*y*z + 8*z;
end