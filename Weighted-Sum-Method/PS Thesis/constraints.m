function[ineq, eq]=constraints(x)
T=1380;
MB=21;
LB=2;
nB=x(3);
F=(-0.005*(nB)^3+0.066*(nB)^2-0.318*(nB)+0.556);
ineq(1)= x(2)-x(1);
ineq(1)= - F;
eq(1) = (x(2)+x(1))*x(3) - 1380;
end