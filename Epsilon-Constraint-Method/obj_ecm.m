function f1 = obj_ecm (x)

d = x(1); h = x(2); w = x(3);

%{ 
In this problem, the 1st objective function is considered as the primary
objective function. The 2nd objective function f2 is bounded by a design
epsilon value as a constraint in the "cons_ecm.m" file
 %}
f1 = 2*(d*h + h*w) + d*w;

end