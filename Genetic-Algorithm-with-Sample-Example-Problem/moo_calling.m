clear; clc;
fun = @moo_objective_functions;
nvars=3;
A=[]; b=[]; Aeq=[]; beq=[]; 
lb=[5 2 3]; ub=[15 5 8]; 
nonlcon=@moo_const; 
[x,fval,exitflag,output] = gamultiobj(fun,nvars,A,b,Aeq,beq,lb,ub,nonlcon)
As = fval(:,1);
V = -fval(:,2);
d = x(:,1);
h = x(:,2);
w = x(:,3);
T = table(As,V,d,h,w)
T_sorted = sortrows(T,{'As'})
As_sorted = T_sorted.As;
V_sorted = T_sorted.V;
plot(As_sorted,V_sorted,'*-')
xlabel('Surface area, (m^2)')
ylabel('Volume, (m^3)')