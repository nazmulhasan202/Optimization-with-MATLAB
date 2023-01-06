function F = obj_wsm (x)

f1 = -0.1323*x^2 + 3.7183*x + 24.981;

f2 = 0.0608*x^2 - 1.5118*x + 23.605;

global w1
F = w1*f1+(1-w1)*f2;
end