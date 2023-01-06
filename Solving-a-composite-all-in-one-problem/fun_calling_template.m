clear;
fun = @obj_func;
x0 = [1 3 5];
A = []; b = []; Aeq = []; beq = [];
lb = [0 2 5]; ub = [10 5 12];
nonlcon = @constraints;
[dv,fval,exitflag,output] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)