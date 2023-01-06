function y = obj_ga_app (x)
d = x(1); h = x(2); w = x(3);

y(1) = 2*(d*h + h*w) + d*w;
y(2) = - (d*h*w);

end